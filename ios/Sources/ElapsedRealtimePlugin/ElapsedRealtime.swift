import Foundation
import Capacitor

@objc(ElapsedRealtime)
public class ElapsedRealtime: CAPPlugin {

    @objc func getElapsedRealtime(_ call: CAPPluginCall) {
        let elapsedTime = ProcessInfo.processInfo.systemUptime * 1000 // Convert to milliseconds
        call.resolve([
            "elapsedTime": elapsedTime
        ])
    }
}
