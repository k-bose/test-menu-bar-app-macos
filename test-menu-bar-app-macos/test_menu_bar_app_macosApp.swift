//
//  test_menu_bar_app_macosApp.swift
//  test-menu-bar-app-macos
//
//  Created by Son Goku on 09-06-2023.
//

import SwiftUI

@main
struct test_menu_bar_app_macosApp: App {
    @NSApplicationDelegateAdaptor(AppDelegate.self) var appDelegate
    
    var body: some Scene {
        Settings {
            EmptyView()
        }
    }
}

class AppDelegate: NSObject, NSApplicationDelegate {
    var statusBarItem: NSStatusItem!
    var menu: NSMenu!

    func applicationDidFinishLaunching(_ notification: Notification) {
        statusBarItem = NSStatusBar.system.statusItem(withLength: NSStatusItem.squareLength)
        statusBarItem.button?.image = NSImage(named: "AppIcon.appiconset") // replace "YourIconName" with your actual icon name

        menu = NSMenu(title: "My Menu Bar App")
        let menuItem1 = NSMenuItem(title: "Item 1", action: #selector(AppDelegate.doItem1), keyEquivalent: "")
        menuItem1.target = self
        menu.addItem(menuItem1)
        
        menu = NSMenu(title: "My Menu Bar App")
        let menuItem2 = NSMenuItem(title: "Item 2", action: #selector(AppDelegate.doItem2), keyEquivalent: "")
        menuItem2.target = self
        menu.addItem(menuItem2)
        
        menu = NSMenu(title: "My Menu Bar App")
        let menuItem3 = NSMenuItem(title: "Item 3", action: #selector(AppDelegate.doItem3), keyEquivalent: "")
        menuItem3.target = self
        menu.addItem(menuItem3)

        statusBarItem.menu = menu
    }

    @objc func doItem1() {
        // Add the code to open your application window here.
    }
    
    @objc func doItem2() {
        // Add the code to open your application window here.
    }
    
    @objc func doItem3() {
        // Add the code to open your application window here.
    }
}
