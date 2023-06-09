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
        statusBarItem.button?.image = NSImage(named: "YourIconName") // replace "YourIconName" with your actual icon name

        menu = NSMenu(title: "My Menu Bar App")
        let menuItem = NSMenuItem(title: "Open", action: #selector(AppDelegate.openApp), keyEquivalent: "")
        menuItem.target = self
        menu.addItem(menuItem)

        statusBarItem.menu = menu
    }

    @objc func openApp() {
        // Add the code to open your application window here.
    }
}
