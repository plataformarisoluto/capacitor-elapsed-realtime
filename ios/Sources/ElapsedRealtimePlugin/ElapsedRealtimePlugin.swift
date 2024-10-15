import Foundation
import Capacitor

/**
 * Please read the Capacitor iOS Plugin Development Guide
 * here: https://capacitorjs.com/docs/plugins/ios
 */
@objc(ElapsedRealtimePlugin)
public class ElapsedRealtimePlugin: CAPPlugin, CAPBridgedPlugin {
    public let identifier = "ElapsedRealtimePlugin"
    public let jsName = "ElapsedRealtime"
    public let pluginMethods: [CAPPluginMethod] = [
        CAPPluginMethod(name: "getElapsedRealtime", returnType: CAPPluginReturnPromise)
    ]
    private let implementation = ElapsedRealtime()

    @objc func getElapsedRealtime(_ call: CAPPluginCall) {
        let elapsedTime = ProcessInfo.processInfo.systemUptime * 1000 // Convert to milliseconds
        call.resolve([
            "elapsedTime": elapsedTime
        ])
    }
}
