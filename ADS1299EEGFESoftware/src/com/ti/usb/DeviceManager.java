// package com.ti.usb;

// public class DeviceManager {
//     // Open the first available ADS1299 device and return a DeviceManager instance
//     public static DeviceManager openFirstADS1299() {
//         // In a real implementation, this would enumerate USB devices and select the correct one.
//         // Here, we just return a new instance for demonstration.
//         return new DeviceManager();
//     }

//     // Close the device and release resources
//     public void close() {
//         // In a real implementation, this would close the USB device handle.
//     }
// }


package com.ti.usb;

import org.usb4java.*;
import java.util.ArrayList;
import java.util.List;

public class DeviceManager implements AutoCloseable {
    private final DeviceHandle handle;
    /*  Vendor / Product IDs can be overridden at launch with
        -Dads1299.usb.vid=0xXXXX  -Dads1299.usb.pid=0xYYYY              */
    private static final short VID = parseId("ads1299.usb.vid", 0x0451);
    // Default PID now matches application/streaming mode (0x5718)
    private static final short PID = parseId("ads1299.usb.pid", 0x5718);

    /* Endpoint numbers taken from lsusb ‑v descriptor dump               */
    // Application/streaming mode: 0x81 (IN), 0x01 (OUT)
    private static final byte EP_OUT = 0x01;   // Bulk-OUT  (0x01)
    private static final byte EP_IN  = (byte) 0x81; // Bulk-IN  (0x81)

    private static short parseId(String prop, int defaultVal) {
        String v = System.getProperty(prop);
        return (short) (v == null ? defaultVal
                                  : Integer.decode(v) & 0xFFFF);
    }

    private static String vidPid(Device d) {
        DeviceDescriptor desc = new DeviceDescriptor();
        LibUsb.getDeviceDescriptor(d, desc);
        return String.format("0x%04X:0x%04X", desc.idVendor(), desc.idProduct());
    }

    private static List<String> listAllDevices() {
        DeviceList list = new DeviceList();
        List<String> ids = new ArrayList<>();
        if (LibUsb.getDeviceList(null, list) >= 0) {
            for (Device d : list) {
                ids.add(vidPid(d));
            }
            LibUsb.freeDeviceList(list, true);
        }
        return ids;
    }

    public static DeviceManager openFirstADS1299() throws LibUsbException {
        UsbUtil.init();
        Device dev = UsbUtil.findFirst(VID, PID);
        if (dev == null) {
            System.err.println("ADS1299 not found with VID/PID "
                               + String.format("0x%04X:0x%04X", VID & 0xFFFF, PID & 0xFFFF));
            System.err.println("Connected USB devices:");
            for (String id : listAllDevices()) System.err.println(" • " + id);
            throw new IllegalStateException("ADS1299 not found");
        }
        DeviceHandle h = new DeviceHandle();
        int r = LibUsb.open(dev, h);
        if (r != LibUsb.SUCCESS)
            throw new LibUsbException("Unable to open device", r);
        LibUsb.claimInterface(h, 0);     // assuming interface 0
        // No alt-setting switch: application/streaming mode has only alt-setting 0
        return new DeviceManager(h);
    }

    private DeviceManager(DeviceHandle h) { this.handle = h; }

    @Override
    public void close() {
        if (handle != null) {
            LibUsb.releaseInterface(handle, 0);
            LibUsb.close(handle);
            UsbUtil.exit();
        }
    }

    public byte[] readSamples(int bytes) throws LibUsbException {
        return UsbUtil.bulkRead(handle, EP_IN, bytes, 1000);
    }

    public int writeCommand(byte[] cmd) throws LibUsbException {
        return UsbUtil.bulkWrite(handle, EP_OUT, cmd, 1000);
    }

    /** quick, non-blocking read.
     *  If the device requires a "start streaming" command before sending data,
     *  this method will attempt to send a 1-byte RDATAC (0x10) command to EP_OUT
     *  before reading from EP_IN. This mimics the Windows GUI startup sequence.
     */
    public int probeRead() throws LibUsbException {
        // RDATAC command (0x10) is standard for ADS1299 to start continuous streaming
        byte[] rdatac = new byte[] { 0x10 };
        try {
            writeCommand(rdatac);
        } catch (LibUsbException ex) {
            // If the command fails, log but continue to try reading anyway
            System.err.println("Warning: Failed to send RDATAC start command: " + ex.getMessage());
        }
        byte[] data = UsbUtil.bulkRead(handle, EP_IN, 24, 250);
        return data.length;
    }
}
