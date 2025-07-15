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

    /* Endpoint numbers taken from lsusb ‑v descriptor dump               */
    private static final byte EP_OUT = 0x06;   // Bulk-OUT  (0x06)
    private static final byte EP_IN  = (byte) 0x86; // Bulk-IN  (6 | 0x80)

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
        // select alt-setting 1 which holds the streaming IN endpoint
        r = LibUsb.setInterfaceAltSetting(h, 0, 1);
        if (r != LibUsb.SUCCESS)
            throw new LibUsbException("Alt-setting switch failed", r);
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

    /** quick, non-blocking read */
    public int probeRead() throws LibUsbException {
        byte[] data = UsbUtil.bulkRead(handle, EP_IN, 24, 250);
        return data.length;
    }
}
