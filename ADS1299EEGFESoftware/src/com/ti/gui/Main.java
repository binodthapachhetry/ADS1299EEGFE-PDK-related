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
        });
    }
}
