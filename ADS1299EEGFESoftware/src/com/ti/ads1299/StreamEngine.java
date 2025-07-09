package com.ti.ads1299;

import com.ti.usb.DeviceManager;

public class StreamEngine {
    public static final int DEFAULT_RATE = 250; // Hz, example default

    private DeviceManager devMgr;
    private boolean running = false;

    public StreamEngine(DeviceManager devMgr) {
        this.devMgr = devMgr;
    }

    public void setSampleRate(int rate) {
        // Set the sample rate on the device (stub)
    }

    public void start() {
        running = true;
        // Start streaming from the device (stub)
    }

    public void stop() {
        running = false;
        // Stop streaming from the device (stub)
    }

    // Simulate reading a block of samples from the device
    public long[] readBlock() {
        // In a real implementation, this would read from the device.
        // Here, we return a dummy block of 8 samples.
        long[] block = new long[8];
        for (int i = 0; i < block.length; i++) {
            block[i] = (long) (Math.random() * Integer.MAX_VALUE);
        }
        try {
            Thread.sleep(1); // Simulate 1 ms delay
        } catch (InterruptedException e) {
            Thread.currentThread().interrupt();
        }
        return block;
    }
}
