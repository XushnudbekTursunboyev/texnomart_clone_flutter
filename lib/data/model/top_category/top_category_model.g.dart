// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'top_category_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$TopCategoryModelImpl _$$TopCategoryModelImplFromJson(
        Map<String, dynamic> json) =>
    _$TopCategoryModelImpl(
      json['success'] as bool?,
      json['message'] as String?,
      json['code'] as int?,
      TopCategoryData.fromJson(json['data'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$$TopCategoryModelImplToJson(
        _$TopCategoryModelImpl instance) =>
    <String, dynamic>{
      'success': instance.success,
      'message': instance.message,
      'code': instance.code,
      'data': instance.data.toJson(),
    };

_$TopCategoryDataImpl _$$TopCategoryDataImplFromJson(
        Map<String, dynamic> json) =>
    _$TopCategoryDataImpl(
      (json['data'] as List<dynamic>)
          .map((e) => TopCategoryItem.fromJson(e as Map<String, dynamic>))
          .toList(),
    );

Map<String, dynamic> _$$TopCategoryDataImplToJson(
        _$TopCategoryDataImpl instance) =>
    <String, dynamic>{
      'data': instance.data.map((e) => e.toJson()).toList(),
    };

_$TopCategoryItemImpl _$$TopCategoryItemImplFromJson(
        Map<String, dynamic> json) =>
    _$TopCategoryItemImpl(
      json['title'] as String?,
      json['slug'] as String?,
    );

Map<String, dynamic> _$$TopCategoryItemImplToJson(
        _$TopCategoryItemImpl instance) =>
    <String, dynamic>{
      'title': instance.title,
      'slug': instance.slug,
    };
