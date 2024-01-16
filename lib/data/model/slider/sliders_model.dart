import 'package:freezed_annotation/freezed_annotation.dart';


part 'sliders_model.g.dart';
part 'sliders_model.freezed.dart';


@freezed
class SlidersModel with _$SlidersModel {
  @JsonSerializable(explicitToJson: true,fieldRename: FieldRename.snake)

  const factory SlidersModel(
      bool? success,
      String? message,
      int? code,
      SlidersData data
      ) = _SlidersModel;


  factory SlidersModel.fromJson(Map<String, dynamic> json) =>
      _$SlidersModelFromJson(json);
}

@freezed
class SlidersData with _$SlidersData {
  @JsonSerializable(explicitToJson: true,fieldRename: FieldRename.snake)

  const factory SlidersData(
      List<SlidersModelItem>? data
      ) = _SlidersData;

  factory SlidersData.fromJson(Map<String, dynamic> json) =>
      _$SlidersDataFromJson(json);
}

@freezed
class SlidersModelItem with _$SlidersModelItem {
  @JsonSerializable(explicitToJson: true,fieldRename: FieldRename.snake)

  const factory SlidersModelItem(
      int? id,
  String? link,
  String? title,
  String? imageWeb,
  String? imageMobileWeb
      ) = _SlidersModelItem;

  factory SlidersModelItem.fromJson(Map<String, dynamic> json) =>
      _$SlidersModelItemFromJson(json);
}