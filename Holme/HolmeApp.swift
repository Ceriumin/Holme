import SwiftUI

@main struct
HolmeApp : App {
    @NSApplicationDelegateAdaptor(AppDelegate.self) var appDelegate
    
    var body: some Scene {
        Settings {
            Text("Settings")
        }
    }
}


