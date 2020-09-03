import Flutter
import UIKit

public class SwiftWoocommerceRestApiPlugin: NSObject, FlutterPlugin {
  public static func register(with registrar: FlutterPluginRegistrar) {
    let channel = FlutterMethodChannel(name: "woocommerce_rest_api", binaryMessenger: registrar.messenger())
    let instance = SwiftWoocommerceRestApiPlugin()
    registrar.addMethodCallDelegate(instance, channel: channel)
  }

  public func handle(_ call: FlutterMethodCall, result: @escaping FlutterResult) {
    result("iOS " + UIDevice.current.systemVersion)
  }
}
