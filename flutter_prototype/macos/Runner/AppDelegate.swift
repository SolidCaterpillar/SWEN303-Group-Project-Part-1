import Cocoa
import FlutterMacOS

@NSApplicationMain
class AppDelegate: FlutterAppDelegate {
  override func applicationShouldTerminateAfterLastWindowClosed(_ sender: NSApplication) -> Bool {
    return true
  }

  override func applicationDidFinishLaunching(_ notification: Notification) {
    let window = NSApp.windows.first
    window?.setContentSize(NSSize(width: 375, height: 812))
    window?.styleMask.remove(.resizable)
    window?.center()
  }
}
