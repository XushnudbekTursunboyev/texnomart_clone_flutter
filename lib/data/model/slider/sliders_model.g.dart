// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'sliders_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$SlidersModelImpl _$$SlidersModelImplFromJson(Map<String, dynamic> json) =>
    _$SlidersModelImpl(
      json['success'] as bool?,
      json['message'] as String?,
      json['code'] as int?,
      SlidersData.fromJson(json['data'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$$SlidersModelImplToJson(_$SlidersModelImpl instance) =>
    <String, dynamic>{
      'success': instance.success,
      'message': instance.message,
      'code': instance.code,
      'data': instance.data.toJson(),
    };

_$SlidersDataImpl _$$SlidersDataImplFromJson(Map<String, dynamic> json) =>
    _$SlidersDataImpl(
      (json['data'] as List<dynamic>?)
          ?.map((e) => SlidersModelItem.fromJson(e as Map<String, dynamic>))
          .toList(),
    );

Map<String, dynamic> _$$SlidersDataImplToJson(_$SlidersDataImpl instance) =>
    <String, dynamic>{
      'data': instance.data?.map((e) => e.toJson()).toList(),
    };

_$SlidersModelItemImpl _$$SlidersModelItemImplFromJson(
        Map<String, dynamic> json) =>
    _$SlidersModelItemImpl(
      json['id'] as int?,
      json['link'] as String?,
      json['title'] as String?,
      json['image_web'] as String?,
      json['image_mobile_web'] as String?,
    );

Map<String, dynamic> _$$SlidersModelItemImplToJson(
        _$SlidersModelItemImpl instance) =>
    <String, dynamic>{
      'id': instance.id,
      'link': instance.link,
      'title': instance.title,
      'image_web': instance.imageWeb,
      'image_mobile_web': instance.imageMobileWeb,
    };
