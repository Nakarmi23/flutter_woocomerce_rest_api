#import "WoocommerceRestApiPlugin.h"
#if __has_include(<woocommerce_rest_api/woocommerce_rest_api-Swift.h>)
#import <woocommerce_rest_api/woocommerce_rest_api-Swift.h>
#else
// Support project import fallback if the generated compatibility header
// is not copied when this plugin is created as a library.
// https://forums.swift.org/t/swift-static-libraries-dont-copy-generated-objective-c-header/19816
#import "woocommerce_rest_api-Swift.h"
#endif

@implementation WoocommerceRestApiPlugin
+ (void)registerWithRegistrar:(NSObject<FlutterPluginRegistrar>*)registrar {
  [SwiftWoocommerceRestApiPlugin registerWithRegistrar:registrar];
}
@end
