//
//  BMFLocationMethodConst.m
//  flutter_bmflocation
//
//  Created by v_wangdachuan on 2022/1/21.
//
#ifndef __BMFLocationMethodConst__M__
#define __BMFLocationMethodConst__M__
//接受flutter
NSString *const kBMFLocationSetAK = @"flutter_bmflocation/setAK";

//设置隐私政策协议
NSString *const kBMFLocationSetAgreePrivacy = @"flutter_bmflocation/setAgreePrivacy";

//设置定位参数
NSString *const kBMFLocationSetOptions = @"flutter_bmflocation/setOptions";

//连续定位
NSString *const kBMFLocationSeriesLoc = @"flutter_bmflocation/seriesLocation";

//停止定位
NSString *const kBMFLocationStopLoc = @"flutter_bmflocation/stopLocation";

//单次定位
NSString *const kBMFLocationSingleLoc = @"flutter_bmflocation/singleLocation";

//添加圆形地理围栏
NSString *const kBMFLocationCircleGeofence = @"flutter_bmfgeofence/circleGeofence";

//添加多边形地理围栏
NSString *const kBMFLocationPolygonGeofence = @"flutter_bmfgeofence/polygonGeofence";

//创建地理围栏回调
NSString *const kBMFLocationGeofenceCallback = @"flutter_bmfgeofence/geofenceCallback";

//监听地理围栏
NSString *const kBMFLocationMonitorGeofence = @"flutter_bmfgeofence/monitorGeofence";

//获取地理围栏id
NSString *const kBMFLocationGetAllGeofence = @"flutter_bmfgeofence/getAllGeofenceId";

//移除地理围栏id
NSString *const kBMFLocationRemoveGeofenceId = @"flutter_bmfgeofence/removeGeofenceId";

//移除全部地理围栏
NSString *const kBMFLocationRemoveAllGeofence = @"flutter_bmfgeofence/removeAllGeofence";

//获取网络状态
NSString *const kBMFLocationNetworkState = @"flutter_bmflocation/networkState";

//设备是否支持设备朝向
NSString *const kBMFLocationHeadingAvailable = @"flutter_bmflocation/headingAvailable";

//开始设备朝向调用
NSString *const kBMFLocationStartHeading = @"flutter_bmflocation/startUpdatingHeading";

//停止设备朝向调用
NSString *const kBMFLocationStopHeading = @"flutter_bmflocation/stopUpdatingHeading";


#endif
