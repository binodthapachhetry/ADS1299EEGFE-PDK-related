package com.ti.gui;

import com.ti.usb.DeviceManager;
import com.ti.ads1299.StreamEngine;

import javax.swing.*;
import java.awt.*;

public class Main {
    public static void main(String[] args) {
        // Simple GUI stub to verify manifest change does not break GUI entry point
        EventQueue.invokeLater(() -> {
            JFrame frame = new JFrame("ADS1299 EEG FE Software");
            frame.setDefaultCloseOperation(JFrame.EXIT_ON_CLOSE);
            frame.setSize(400, 200);
            frame.add(new JLabel("ADS1299 EEG FE GUI Loaded", SwingConstants.CENTER), BorderLayout.CENTER);
            frame.setVisible(true);

            try (com.ti.usb.DeviceManager dm = com.ti.usb.DeviceManager.openFirstADS1299()) {
                int n = dm.probeRead();                                        // NEW
                System.out.println("ADS1299 USB link OK – " + n +              // NEW
                                   " bytes received");                         // NEW
                JOptionPane.showMessageDialog(frame,                           // NEW
                        "ADS1299 connected.\nFirst USB packet contained " +    // NEW
                        n + " bytes.",                                         // NEW
                        "Connection verified",                                 // NEW
                        JOptionPane.INFORMATION_MESSAGE);                      // NEW
                // optional: start StreamEngine here
            } catch (org.usb4java.LibUsbException ex) {
                JOptionPane.showMessageDialog(null,
                        "USB error: " + ex.getMessage(),
                        "ADS1299", JOptionPane.ERROR_MESSAGE);
            }
        });
    }
}
