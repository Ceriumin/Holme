import Cocoa

class AppDelegate: NSObject, NSApplicationDelegate {
    var statusItem: NSStatusItem?

    func applicationDidFinishLaunching(_ notification: Notification) {
        statusItem = NSStatusBar.system.statusItem(withLength: NSStatusItem.variableLength)
        updateStatusBar(title: "Menu Bar")

        let menu = NSMenu()
        
        menu.addItem(NSMenuItem(title: "Quit", action: #selector(NSApp.terminate), keyEquivalent: "q"))
        statusItem?.menu = menu
    }


    func updateStatusBar(title: String) {
        if let button = statusItem?.button {
            button.title = title
        }
    }
}
