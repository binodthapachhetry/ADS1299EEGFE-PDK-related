package com.ti.usb;

import org.usb4java.*;

import org.usb4java.*;

public class UsbUtil {
    public static Context ctx;

    public static void init() throws LibUsbException {
        ctx = new Context();
        int r = LibUsb.init(ctx);
        if (r != LibUsb.SUCCESS)
            throw new LibUsbException("Unable to initialize libusb", r);
    }

    public static void exit() {
        if (ctx != null) {
            LibUsb.exit(ctx);
            ctx = null;
        }
    }

    public static Device findFirst(short vid, short pid) {
        DeviceList list = new DeviceList();
        try {
            int r = LibUsb.getDeviceList(ctx, list);
            if (r < 0)
                throw new LibUsbException("Unable to get device list", r);
            for (Device dev : list) {
                DeviceDescriptor desc = new DeviceDescriptor();
                r = LibUsb.getDeviceDescriptor(dev, desc);
                if (r != LibUsb.SUCCESS)
                    continue;
                if (desc.idVendor() == vid && desc.idProduct() == pid)
                    return dev;
            }
            return null;
        } finally {
            LibUsb.freeDeviceList(list, true);
        }
    }

    public static byte[] bulkRead(DeviceHandle h, int ep, int len, int timeout) throws LibUsbException {
        byte[] buf = new byte[len];
        int[] transferred = new int[1];
        int r = LibUsb.bulkTransfer(h, (byte)ep, buf, transferred, timeout);
        if (r != LibUsb.SUCCESS)
            throw new LibUsbException("Bulk read failed", r);
        if (transferred[0] == len)
            return buf;
        byte[] trimmed = new byte[transferred[0]];
        System.arraycopy(buf, 0, trimmed, 0, transferred[0]);
        return trimmed;
    }

    public static int bulkWrite(DeviceHandle h, int ep, byte[] buf, int timeout) throws LibUsbException {
        int[] transferred = new int[1];
        int r = LibUsb.bulkTransfer(h, (byte)ep, buf, transferred, timeout);
        if (r != LibUsb.SUCCESS)
            throw new LibUsbException("Bulk write failed", r);
        return transferred[0];
    }
}
