import 'package:freezed_annotation/freezed_annotation.dart';


part 'top_category_model.freezed.dart';
part 'top_category_model.g.dart';

@freezed
class TopCategoryModel with _$TopCategoryModel {
  @JsonSerializable(explicitToJson: true,fieldRename: FieldRename.snake)

  const factory TopCategoryModel(
  bool? success,
  String? message,
  int? code,
  TopCategoryData data,
      ) = _TopCategoryModel;

  factory TopCategoryModel.fromJson(Map<String, dynamic> json) =>
      _$TopCategoryModelFromJson(json);
}

@freezed
class TopCategoryData with _$TopCategoryData {
  @JsonSerializable(explicitToJson: true,fieldRename: FieldRename.snake)

  const factory TopCategoryData(
  List<TopCategoryItem> data
      ) = _TopCategoryData;

  factory TopCategoryData.fromJson(Map<String, dynamic> json) =>
      _$TopCategoryDataFromJson(json);
}

@freezed
class TopCategoryItem with _$TopCategoryItem {
  @JsonSerializable(explicitToJson: true,fieldRename: FieldRename.snake)

  const factory TopCategoryItem(
  String? title,
   String? slug
      ) = _TopCategoryItem;

  factory TopCategoryItem.fromJson(Map<String, dynamic> json) =>
      _$TopCategoryItemFromJson(json);
}

