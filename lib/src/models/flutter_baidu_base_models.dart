import 'package:flutter/material.dart';

/// 此文件定义flutter与native间的基础数据交互中间层model

/// flutter_bmfmap 抽象类
abstract class BMFBaseModel {
  /// model -> map
  @required
  Map<String, Object?> toMap();

  /// map -> dynamic
  @required
  dynamic fromMap(Map map);
}

/// 代表经纬度
class BMFLocCoordinate implements BMFBaseModel {
  /// 纬度
  late double latitude;

  /// 经度
  late double longitude;

  /// BMFCoordinate构造方法
  BMFLocCoordinate(this.latitude, this.longitude);

  /// map => BMFCoordinate
  BMFLocCoordinate.fromMap(Map map)
      : assert(map.containsKey('latitude'),
            'Construct a BMFLocCoordinate，The parameter latitude cannot be null'),
        assert(map.containsKey('longitude'),
            'Construct a BMFLocCoordinate，The parameter longitude cannot be null') {
    latitude = map['latitude'] as double;
    longitude = map['longitude'] as double;
  }

  @override
  Map<String, Object> toMap() {
    return {'latitude': this.latitude, 'longitude': this.longitude};
  }

  @override
  fromMap(Map map) {
    return BMFLocCoordinate.fromMap(map);
  }
}