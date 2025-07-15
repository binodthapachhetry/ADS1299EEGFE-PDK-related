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
    private static final short PID = parseId("ads1299.usb.pid", 0x9001);

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
        return UsbUtil.bulkRead(handle, 0x81, bytes, 1000); // EP 0x81 IN
    }

    public int writeCommand(byte[] cmd) throws LibUsbException {
        return UsbUtil.bulkWrite(handle, 0x01, cmd, 1000);  // EP 0x01 OUT
    }

    /** Returns number of bytes obtained from a quick, non-blocking read. */
    public int probeRead() throws LibUsbException {
        byte[] data = UsbUtil.bulkRead(handle, 0x81, 24, 250);   // 1 packet
        return data.length;
    }
}
