import 'package:freezed_annotation/freezed_annotation.dart';

part 'special_categories_model.g.dart';
part 'special_categories_model.freezed.dart';

@freezed
class SpecialCategoriesModel with _$SpecialCategoriesModel {
  @JsonSerializable(explicitToJson: true,fieldRename: FieldRename.snake)

  const factory SpecialCategoriesModel(
  bool? success,
  String? message,
  int? code,
  SpecialCategoryData data
      ) = _SpecialCategoriesModel;

  factory SpecialCategoriesModel.fromJson(Map<String, dynamic> json) =>
      _$SpecialCategoriesModelFromJson(json);
}

@freezed
class SpecialCategoryData with _$SpecialCategoryData {
  @JsonSerializable(explicitToJson: true,fieldRename: FieldRename.snake)

  const factory SpecialCategoryData(
  List<SpecialCategoryItem> data
      ) = _SpecialCategoryData;

  factory SpecialCategoryData.fromJson(Map<String, dynamic> json) =>
      _$SpecialCategoryDataFromJson(json);
}

@freezed
class SpecialCategoryItem with _$SpecialCategoryItem {
  @JsonSerializable(explicitToJson: true,fieldRename: FieldRename.snake)

  const factory SpecialCategoryItem(
  String? title,
  String? image,
  String? slug
      ) = _SpecialCategoryItem;

  factory SpecialCategoryItem.fromJson(Map<String, dynamic> json) =>
      _$SpecialCategoryItemFromJson(json);
}

