//
//  BMFLocationManager.m
//  flutter_bmflocation
//
//  Created by v_wangdachuan on 2022/1/21.
//

#import "BMFLocationManager.h"
#import "BMFLocationMethodHandles.h"
#import "BMFLocationMethodConst.h"
#import "BMFLocationHandle.h"
#import "BMFCircleGeofenceHandle.h"
#import "BMKLocationkit/BMKLocationComponent.h"

@interface BMFLocationManager ()<BMKLocationAuthDelegate>

@property (nonatomic, strong) BMKLocationManager *locationManager;

@end

@implementation BMFLocationManager

+ (void)registerWithRegistrar:(nonnull NSObject<FlutterPluginRegistrar> *)registrar {
    FlutterMethodChannel *locationChannel = [FlutterMethodChannel methodChannelWithName:@"flutter_bmflocation" binaryMessenger:[registrar messenger]];
    BMFLocationManager *manager = [[BMFLocationManager alloc] init];
    manager.channel = locationChannel;
    [registrar addMethodCallDelegate:manager channel:locationChannel];
    
    FlutterMethodChannel *geofenceChannel = [FlutterMethodChannel methodChannelWithName:@"flutter_bmfgeofence" binaryMessenger:[registrar messenger]];
    manager.geofenceChannel = geofenceChannel;
    [registrar addMethodCallDelegate:manager channel:geofenceChannel];
}

- (void)handleMethodCall:(FlutterMethodCall*)call result:(FlutterResult)result {
//    NSLog(@"bdmap_loc_flutter_plugin:handleMethodCall:%@", call.method);

    BMFLocationMethodHandles *handleCenter = [BMFLocationMethodHandles defalutCenter];
    NSArray *methods = [[handleCenter locationHandles] allKeys];
    NSObject<BMFLocationHandle> *handler;
    
    if ([methods containsObject:call.method]) {
        
        // 地理围栏管理类为单例，保证BMFCircleGeofenceHandle只有一个实例
        // TODO:将定位和地理围栏分开处理
        if ([handleCenter.handlerDictionary.allKeys containsObject:@"BMFCircleGeofenceHandle"] && [call.method hasPrefix:@"flutter_bmfgeofence"]) {
            handler = [handleCenter.handlerDictionary objectForKey:@"BMFCircleGeofenceHandle"];
        } else {
            //如果是鉴权或者设置隐私政策就不需要初始化locationManager，否则会输出日志’请通过BMKLocationAuth中的setAgreePrivacy接口确保用户同意隐私政策后再进行定位SDK的初始化！‘
            if ([call.method isEqualToString:@"flutter_bmflocation/setAgreePrivacy"]) {
                handler = [[NSClassFromString(handleCenter.locationHandles[call.method]) new] initWithManager:nil channel:_channel];
            } else {
                // 地理围栏使用_geofenceChannel通道，保证可以和定位同时存在
                handler = [[NSClassFromString(handleCenter.locationHandles[call.method]) new] initWithManager:self.locationManager channel:[call.method hasPrefix:@"flutter_bmfgeofence"] ? _geofenceChannel : _channel];
            }

            [handleCenter.handlerDictionary setObject:handler forKey:NSStringFromClass([handler class])];
        }

        [handler handleMethodCall:call result:result];
        
    } else {
        result(FlutterMethodNotImplemented);
    }
}



//懒加载
- (BMKLocationManager *)locationManager{
    if (!_locationManager) {
        _locationManager = [BMKLocationManager new];
    }
    return _locationManager;
}

@end
