import 'package:freezed_annotation/freezed_annotation.dart';

part 'top_products_model.freezed.dart';
part 'top_products_model.g.dart';


@freezed
class TopProductsModel with _$TopProductsModel {
  @JsonSerializable(explicitToJson: true,fieldRename: FieldRename.snake)

  const factory TopProductsModel(
  bool? success,
  String? message,
  int? code,
  TopProductsData data
      ) = _TopProductsModel;

  factory TopProductsModel.fromJson(Map<String, dynamic> json) =>
      _$TopProductsModelFromJson(json);
}

@freezed
class TopProductsData with _$TopProductsData {
  @JsonSerializable(explicitToJson: true,fieldRename: FieldRename.snake)

  const factory TopProductsData(
  List<TopProductsItem> data
  ) = _TopProductsData;

  factory TopProductsData.fromJson(Map<String, dynamic> json) =>
      _$TopProductsDataFromJson(json);
}

@freezed
class TopProductsItem with _$TopProductsItem {
  @JsonSerializable(explicitToJson: true,fieldRename: FieldRename.snake)

  const factory TopProductsItem(
  int? id,
  String? name,
  String? image,
  String? availability,
  String? axiomMonthlyPrice,
  int? salePrice,
  int? oldPrice,
  int? reviewsCount,
  int? reviewsAverage,
  int? allCount,
  List<Sticker> stickers,
  List<dynamic> saleMonths
      ) = _TopProductsItem;

  factory TopProductsItem.fromJson(Map<String, dynamic> json) =>
      _$TopProductsItemFromJson(json);
}

// @freezed
// class SaleMonth with _$SaleMonth {
//   @JsonSerializable(explicitToJson: true,fieldRename: FieldRename.snake)
//
//   const factory SaleMonth(
//   int? id,
//   String? key,
//   String? name,
//   String? image
//       ) = _SaleMonth;
//
//   factory SaleMonth.fromJson(Map<String, dynamic> json) =>
//       _$SaleMonthFromJson(json);
// }

@freezed
class Sticker with _$Sticker {
  @JsonSerializable(explicitToJson: true,fieldRename: FieldRename.snake)

  const factory Sticker(
  String name,
  String backgroundColor,
  String textColor,
  bool isImage,
  bool showInCard,
  dynamic image
      ) = _Sticker;

  factory Sticker.fromJson(Map<String, dynamic> json) =>
      _$StickerFromJson(json);
}