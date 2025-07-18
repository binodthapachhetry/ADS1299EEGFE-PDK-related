package com.ti.usb;

import org.usb4java.*;
import java.nio.ByteBuffer;

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
        ByteBuffer buf = ByteBuffer.allocateDirect(len);
        int[] transferred = new int[1];
        int r = LibUsb.bulkTransfer(h, (byte) ep, buf, transferred, timeout);
        if (r != LibUsb.SUCCESS)
            throw new LibUsbException("Bulk read failed", r);
        byte[] out = new byte[transferred[0]];
        buf.rewind();
        buf.get(out, 0, transferred[0]);
        return out;
    }

    public static int bulkWrite(DeviceHandle h, int ep, byte[] data, int timeout) throws LibUsbException {
        ByteBuffer buf = ByteBuffer.allocateDirect(data.length);
        buf.put(data);
        buf.rewind();
        int[] transferred = new int[1];
        int r = LibUsb.bulkTransfer(h, (byte) ep, buf, transferred, timeout);
        if (r != LibUsb.SUCCESS)
            throw new LibUsbException("Bulk write failed", r);
        return transferred[0];
    }
}
