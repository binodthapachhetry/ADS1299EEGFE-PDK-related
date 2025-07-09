package com.ti.ads1299tools;

import com.ti.usb.DeviceManager;      // existing USB wrapper
import com.ti.ads1299.StreamEngine;   // existing data-stream class

public final class HeadlessRecorder {

    public static void main(String[] args) throws Exception {
        /* --- 1. CLI parsing (very small) ---------------------------------- */
        if (args.length < 1) {
            System.err.println("Usage: HeadlessRecorder <outfile> [seconds]");
            System.exit(1);
        }
        final String outFile = args[0];
        final int seconds   = (args.length > 1) ? Integer.parseInt(args[1]) : -1; // –1 → unlimited

        /* --- 2. Open board ------------------------------------------------- */
        DeviceManager devMgr = DeviceManager.openFirstADS1299();  // helper exists in GUI
        StreamEngine  stream = new StreamEngine(devMgr);

        /* --- 3. Configure ADS1299 (reuse defaults used by GUI) ------------- */
        stream.setSampleRate(StreamEngine.DEFAULT_RATE);
        stream.start();                          // begin continuous mode

        /* --- 4. Dump incoming samples -------------------------------------- */
        try (java.io.DataOutputStream out =
                 new java.io.DataOutputStream(
                     new java.io.BufferedOutputStream(
                         new java.io.FileOutputStream(outFile)))) {

            long  start = System.currentTimeMillis();
            while (seconds < 0 ||
                   (System.currentTimeMillis() - start) < seconds * 1000L) {

                long[] block = stream.readBlock();   // already returns 1-ms or N-sample buffer
                for (long sample : block) out.writeInt((int) sample);
            }
        }

        /* --- 5. Cleanup ---------------------------------------------------- */
        stream.stop();
        devMgr.close();
    }
}
