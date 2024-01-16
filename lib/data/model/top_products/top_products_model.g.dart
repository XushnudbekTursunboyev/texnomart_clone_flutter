// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'top_products_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$TopProductsModelImpl _$$TopProductsModelImplFromJson(
        Map<String, dynamic> json) =>
    _$TopProductsModelImpl(
      json['success'] as bool?,
      json['message'] as String?,
      json['code'] as int?,
      TopProductsData.fromJson(json['data'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$$TopProductsModelImplToJson(
        _$TopProductsModelImpl instance) =>
    <String, dynamic>{
      'success': instance.success,
      'message': instance.message,
      'code': instance.code,
      'data': instance.data.toJson(),
    };

_$TopProductsDataImpl _$$TopProductsDataImplFromJson(
        Map<String, dynamic> json) =>
    _$TopProductsDataImpl(
      (json['data'] as List<dynamic>)
          .map((e) => TopProductsItem.fromJson(e as Map<String, dynamic>))
          .toList(),
    );

Map<String, dynamic> _$$TopProductsDataImplToJson(
        _$TopProductsDataImpl instance) =>
    <String, dynamic>{
      'data': instance.data.map((e) => e.toJson()).toList(),
    };

_$TopProductsItemImpl _$$TopProductsItemImplFromJson(
        Map<String, dynamic> json) =>
    _$TopProductsItemImpl(
      json['id'] as int?,
      json['name'] as String?,
      json['image'] as String?,
      json['availability'] as String?,
      json['axiom_monthly_price'] as String?,
      json['sale_price'] as int?,
      json['old_price'] as int?,
      json['reviews_count'] as int?,
      json['reviews_average'] as int?,
      json['all_count'] as int?,
      (json['stickers'] as List<dynamic>)
          .map((e) => Sticker.fromJson(e as Map<String, dynamic>))
          .toList(),
      json['sale_months'] as List<dynamic>,
    );

Map<String, dynamic> _$$TopProductsItemImplToJson(
        _$TopProductsItemImpl instance) =>
    <String, dynamic>{
      'id': instance.id,
      'name': instance.name,
      'image': instance.image,
      'availability': instance.availability,
      'axiom_monthly_price': instance.axiomMonthlyPrice,
      'sale_price': instance.salePrice,
      'old_price': instance.oldPrice,
      'reviews_count': instance.reviewsCount,
      'reviews_average': instance.reviewsAverage,
      'all_count': instance.allCount,
      'stickers': instance.stickers.map((e) => e.toJson()).toList(),
      'sale_months': instance.saleMonths,
    };

_$StickerImpl _$$StickerImplFromJson(Map<String, dynamic> json) =>
    _$StickerImpl(
      json['name'] as String,
      json['background_color'] as String,
      json['text_color'] as String,
      json['is_image'] as bool,
      json['show_in_card'] as bool,
      json['image'],
    );

Map<String, dynamic> _$$StickerImplToJson(_$StickerImpl instance) =>
    <String, dynamic>{
      'name': instance.name,
      'background_color': instance.backgroundColor,
      'text_color': instance.textColor,
      'is_image': instance.isImage,
      'show_in_card': instance.showInCard,
      'image': instance.image,
    };
