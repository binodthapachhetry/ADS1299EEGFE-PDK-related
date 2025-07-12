package com.ti.usb;

import org.usb4java.*;

public class DeviceManager implements AutoCloseable {
    private final DeviceHandle handle;
    private static final short VID = (short)0x0451;   // TODO confirm
    private static final short PID = (short)0xEEDD;   // TODO confirm

    public static DeviceManager openFirstADS1299() throws LibUsbException {
        UsbUtil.init();
        Device dev = UsbUtil.findFirst(VID, PID);
        if (dev == null)
            throw new IllegalStateException("ADS1299 not found");
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
}
