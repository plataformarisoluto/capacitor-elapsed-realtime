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
        CAPPluginMethod(name: "echo", returnType: CAPPluginReturnPromise)
    ]
    private let implementation = ElapsedRealtime()

    @objc func echo(_ call: CAPPluginCall) {
        let value = call.getString("value") ?? ""
        call.resolve([
            "value": implementation.echo(value)
        ])
    }

    @objc func getElapsedRealtime(_ call: CAPPluginCall) {
        let elapsedTime = ProcessInfo.processInfo.systemUptime * 1000 // Convert to milliseconds
        call.resolve([
            "elapsedTime": elapsedTime
        ])
    }
}
