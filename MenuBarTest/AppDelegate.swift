//
//  AppDelegate.swift
//  MenuBarTest
//
//  Created by Darren Klein on 11/24/19.
//  Copyright © 2019 Darren Klein. All rights reserved.
//

import Cocoa
import SwiftUI

@NSApplicationMain
class AppDelegate: NSObject, NSApplicationDelegate {
    var statusBarItem: NSStatusItem!

    func applicationDidFinishLaunching(_ aNotification: Notification) {
        let statusBar = NSStatusBar.system
        statusBarItem = statusBar.statusItem(withLength: NSStatusItem.squareLength)
        
        statusBarItem.button?.title = "+"
        
        let statusBarMenu = NSMenu(title: "This is my menu title")
        
        statusBarItem.menu = statusBarMenu
        
        statusBarMenu.addItem(
            withTitle: "Order a burrito",
            action: #selector(AppDelegate.orderABurrito),
            keyEquivalent: "")

        statusBarMenu.addItem(
            withTitle: "Cancel burrito order",
            action: #selector(AppDelegate.cancelBurritoOrder),
            keyEquivalent: "")
    }

    @objc func orderABurrito() {
        print("Ordering a burrito!")
    }

    @objc func cancelBurritoOrder() {
        print("Canceling your order :(")
    }

    func applicationWillTerminate(_ aNotification: Notification) {
        // Insert code here to tear down your application
    }


}

