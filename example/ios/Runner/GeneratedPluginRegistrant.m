//
//  Generated file. Do not edit.
//

// clang-format off

#import "GeneratedPluginRegistrant.h"

#if __has_include(<device_info_plus/FPPDeviceInfoPlusPlugin.h>)
#import <device_info_plus/FPPDeviceInfoPlusPlugin.h>
#else
@import device_info_plus;
#endif

#if __has_include(<flutter_baidu_mapapi_base/FlutterBmfbasePlugin.h>)
#import <flutter_baidu_mapapi_base/FlutterBmfbasePlugin.h>
#else
@import flutter_baidu_mapapi_base;
#endif

#if __has_include(<flutter_baidu_mapapi_map/FlutterBmfmapPlugin.h>)
#import <flutter_baidu_mapapi_map/FlutterBmfmapPlugin.h>
#else
@import flutter_baidu_mapapi_map;
#endif

#if __has_include(<flutter_bmflocation/FlutterBmflocationPlugin.h>)
#import <flutter_bmflocation/FlutterBmflocationPlugin.h>
#else
@import flutter_bmflocation;
#endif

#if __has_include(<permission_handler/PermissionHandlerPlugin.h>)
#import <permission_handler/PermissionHandlerPlugin.h>
#else
@import permission_handler;
#endif

@implementation GeneratedPluginRegistrant

+ (void)registerWithRegistry:(NSObject<FlutterPluginRegistry>*)registry {
  [FPPDeviceInfoPlusPlugin registerWithRegistrar:[registry registrarForPlugin:@"FPPDeviceInfoPlusPlugin"]];
  [FlutterBmfbasePlugin registerWithRegistrar:[registry registrarForPlugin:@"FlutterBmfbasePlugin"]];
  [FlutterBmfmapPlugin registerWithRegistrar:[registry registrarForPlugin:@"FlutterBmfmapPlugin"]];
  [FlutterBmflocationPlugin registerWithRegistrar:[registry registrarForPlugin:@"FlutterBmflocationPlugin"]];
  [PermissionHandlerPlugin registerWithRegistrar:[registry registrarForPlugin:@"PermissionHandlerPlugin"]];
}

@end
