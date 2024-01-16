// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'special_categories_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$SpecialCategoriesModelImpl _$$SpecialCategoriesModelImplFromJson(
        Map<String, dynamic> json) =>
    _$SpecialCategoriesModelImpl(
      json['success'] as bool?,
      json['message'] as String?,
      json['code'] as int?,
      SpecialCategoryData.fromJson(json['data'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$$SpecialCategoriesModelImplToJson(
        _$SpecialCategoriesModelImpl instance) =>
    <String, dynamic>{
      'success': instance.success,
      'message': instance.message,
      'code': instance.code,
      'data': instance.data.toJson(),
    };

_$SpecialCategoryDataImpl _$$SpecialCategoryDataImplFromJson(
        Map<String, dynamic> json) =>
    _$SpecialCategoryDataImpl(
      (json['data'] as List<dynamic>)
          .map((e) => SpecialCategoryItem.fromJson(e as Map<String, dynamic>))
          .toList(),
    );

Map<String, dynamic> _$$SpecialCategoryDataImplToJson(
        _$SpecialCategoryDataImpl instance) =>
    <String, dynamic>{
      'data': instance.data.map((e) => e.toJson()).toList(),
    };

_$SpecialCategoryItemImpl _$$SpecialCategoryItemImplFromJson(
        Map<String, dynamic> json) =>
    _$SpecialCategoryItemImpl(
      json['title'] as String?,
      json['image'] as String?,
      json['slug'] as String?,
    );

Map<String, dynamic> _$$SpecialCategoryItemImplToJson(
        _$SpecialCategoryItemImpl instance) =>
    <String, dynamic>{
      'title': instance.title,
      'image': instance.image,
      'slug': instance.slug,
    };
