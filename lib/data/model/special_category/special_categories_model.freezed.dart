// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'special_categories_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

SpecialCategoriesModel _$SpecialCategoriesModelFromJson(
    Map<String, dynamic> json) {
  return _SpecialCategoriesModel.fromJson(json);
}

/// @nodoc
mixin _$SpecialCategoriesModel {
  bool? get success => throw _privateConstructorUsedError;
  String? get message => throw _privateConstructorUsedError;
  int? get code => throw _privateConstructorUsedError;
  SpecialCategoryData get data => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $SpecialCategoriesModelCopyWith<SpecialCategoriesModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $SpecialCategoriesModelCopyWith<$Res> {
  factory $SpecialCategoriesModelCopyWith(SpecialCategoriesModel value,
          $Res Function(SpecialCategoriesModel) then) =
      _$SpecialCategoriesModelCopyWithImpl<$Res, SpecialCategoriesModel>;
  @useResult
  $Res call(
      {bool? success, String? message, int? code, SpecialCategoryData data});

  $SpecialCategoryDataCopyWith<$Res> get data;
}

/// @nodoc
class _$SpecialCategoriesModelCopyWithImpl<$Res,
        $Val extends SpecialCategoriesModel>
    implements $SpecialCategoriesModelCopyWith<$Res> {
  _$SpecialCategoriesModelCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? success = freezed,
    Object? message = freezed,
    Object? code = freezed,
    Object? data = null,
  }) {
    return _then(_value.copyWith(
      success: freezed == success
          ? _value.success
          : success // ignore: cast_nullable_to_non_nullable
              as bool?,
      message: freezed == message
          ? _value.message
          : message // ignore: cast_nullable_to_non_nullable
              as String?,
      code: freezed == code
          ? _value.code
          : code // ignore: cast_nullable_to_non_nullable
              as int?,
      data: null == data
          ? _value.data
          : data // ignore: cast_nullable_to_non_nullable
              as SpecialCategoryData,
    ) as $Val);
  }

  @override
  @pragma('vm:prefer-inline')
  $SpecialCategoryDataCopyWith<$Res> get data {
    return $SpecialCategoryDataCopyWith<$Res>(_value.data, (value) {
      return _then(_value.copyWith(data: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$SpecialCategoriesModelImplCopyWith<$Res>
    implements $SpecialCategoriesModelCopyWith<$Res> {
  factory _$$SpecialCategoriesModelImplCopyWith(
          _$SpecialCategoriesModelImpl value,
          $Res Function(_$SpecialCategoriesModelImpl) then) =
      __$$SpecialCategoriesModelImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {bool? success, String? message, int? code, SpecialCategoryData data});

  @override
  $SpecialCategoryDataCopyWith<$Res> get data;
}

/// @nodoc
class __$$SpecialCategoriesModelImplCopyWithImpl<$Res>
    extends _$SpecialCategoriesModelCopyWithImpl<$Res,
        _$SpecialCategoriesModelImpl>
    implements _$$SpecialCategoriesModelImplCopyWith<$Res> {
  __$$SpecialCategoriesModelImplCopyWithImpl(
      _$SpecialCategoriesModelImpl _value,
      $Res Function(_$SpecialCategoriesModelImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? success = freezed,
    Object? message = freezed,
    Object? code = freezed,
    Object? data = null,
  }) {
    return _then(_$SpecialCategoriesModelImpl(
      freezed == success
          ? _value.success
          : success // ignore: cast_nullable_to_non_nullable
              as bool?,
      freezed == message
          ? _value.message
          : message // ignore: cast_nullable_to_non_nullable
              as String?,
      freezed == code
          ? _value.code
          : code // ignore: cast_nullable_to_non_nullable
              as int?,
      null == data
          ? _value.data
          : data // ignore: cast_nullable_to_non_nullable
              as SpecialCategoryData,
    ));
  }
}

/// @nodoc

@JsonSerializable(explicitToJson: true, fieldRename: FieldRename.snake)
class _$SpecialCategoriesModelImpl implements _SpecialCategoriesModel {
  const _$SpecialCategoriesModelImpl(
      this.success, this.message, this.code, this.data);

  factory _$SpecialCategoriesModelImpl.fromJson(Map<String, dynamic> json) =>
      _$$SpecialCategoriesModelImplFromJson(json);

  @override
  final bool? success;
  @override
  final String? message;
  @override
  final int? code;
  @override
  final SpecialCategoryData data;

  @override
  String toString() {
    return 'SpecialCategoriesModel(success: $success, message: $message, code: $code, data: $data)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$SpecialCategoriesModelImpl &&
            (identical(other.success, success) || other.success == success) &&
            (identical(other.message, message) || other.message == message) &&
            (identical(other.code, code) || other.code == code) &&
            (identical(other.data, data) || other.data == data));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, success, message, code, data);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$SpecialCategoriesModelImplCopyWith<_$SpecialCategoriesModelImpl>
      get copyWith => __$$SpecialCategoriesModelImplCopyWithImpl<
          _$SpecialCategoriesModelImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$SpecialCategoriesModelImplToJson(
      this,
    );
  }
}

abstract class _SpecialCategoriesModel implements SpecialCategoriesModel {
  const factory _SpecialCategoriesModel(
      final bool? success,
      final String? message,
      final int? code,
      final SpecialCategoryData data) = _$SpecialCategoriesModelImpl;

  factory _SpecialCategoriesModel.fromJson(Map<String, dynamic> json) =
      _$SpecialCategoriesModelImpl.fromJson;

  @override
  bool? get success;
  @override
  String? get message;
  @override
  int? get code;
  @override
  SpecialCategoryData get data;
  @override
  @JsonKey(ignore: true)
  _$$SpecialCategoriesModelImplCopyWith<_$SpecialCategoriesModelImpl>
      get copyWith => throw _privateConstructorUsedError;
}

SpecialCategoryData _$SpecialCategoryDataFromJson(Map<String, dynamic> json) {
  return _SpecialCategoryData.fromJson(json);
}

/// @nodoc
mixin _$SpecialCategoryData {
  List<SpecialCategoryItem> get data => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $SpecialCategoryDataCopyWith<SpecialCategoryData> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $SpecialCategoryDataCopyWith<$Res> {
  factory $SpecialCategoryDataCopyWith(
          SpecialCategoryData value, $Res Function(SpecialCategoryData) then) =
      _$SpecialCategoryDataCopyWithImpl<$Res, SpecialCategoryData>;
  @useResult
  $Res call({List<SpecialCategoryItem> data});
}

/// @nodoc
class _$SpecialCategoryDataCopyWithImpl<$Res, $Val extends SpecialCategoryData>
    implements $SpecialCategoryDataCopyWith<$Res> {
  _$SpecialCategoryDataCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? data = null,
  }) {
    return _then(_value.copyWith(
      data: null == data
          ? _value.data
          : data // ignore: cast_nullable_to_non_nullable
              as List<SpecialCategoryItem>,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$SpecialCategoryDataImplCopyWith<$Res>
    implements $SpecialCategoryDataCopyWith<$Res> {
  factory _$$SpecialCategoryDataImplCopyWith(_$SpecialCategoryDataImpl value,
          $Res Function(_$SpecialCategoryDataImpl) then) =
      __$$SpecialCategoryDataImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({List<SpecialCategoryItem> data});
}

/// @nodoc
class __$$SpecialCategoryDataImplCopyWithImpl<$Res>
    extends _$SpecialCategoryDataCopyWithImpl<$Res, _$SpecialCategoryDataImpl>
    implements _$$SpecialCategoryDataImplCopyWith<$Res> {
  __$$SpecialCategoryDataImplCopyWithImpl(_$SpecialCategoryDataImpl _value,
      $Res Function(_$SpecialCategoryDataImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? data = null,
  }) {
    return _then(_$SpecialCategoryDataImpl(
      null == data
          ? _value._data
          : data // ignore: cast_nullable_to_non_nullable
              as List<SpecialCategoryItem>,
    ));
  }
}

/// @nodoc

@JsonSerializable(explicitToJson: true, fieldRename: FieldRename.snake)
class _$SpecialCategoryDataImpl implements _SpecialCategoryData {
  const _$SpecialCategoryDataImpl(final List<SpecialCategoryItem> data)
      : _data = data;

  factory _$SpecialCategoryDataImpl.fromJson(Map<String, dynamic> json) =>
      _$$SpecialCategoryDataImplFromJson(json);

  final List<SpecialCategoryItem> _data;
  @override
  List<SpecialCategoryItem> get data {
    if (_data is EqualUnmodifiableListView) return _data;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_data);
  }

  @override
  String toString() {
    return 'SpecialCategoryData(data: $data)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$SpecialCategoryDataImpl &&
            const DeepCollectionEquality().equals(other._data, _data));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(_data));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$SpecialCategoryDataImplCopyWith<_$SpecialCategoryDataImpl> get copyWith =>
      __$$SpecialCategoryDataImplCopyWithImpl<_$SpecialCategoryDataImpl>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$SpecialCategoryDataImplToJson(
      this,
    );
  }
}

abstract class _SpecialCategoryData implements SpecialCategoryData {
  const factory _SpecialCategoryData(final List<SpecialCategoryItem> data) =
      _$SpecialCategoryDataImpl;

  factory _SpecialCategoryData.fromJson(Map<String, dynamic> json) =
      _$SpecialCategoryDataImpl.fromJson;

  @override
  List<SpecialCategoryItem> get data;
  @override
  @JsonKey(ignore: true)
  _$$SpecialCategoryDataImplCopyWith<_$SpecialCategoryDataImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

SpecialCategoryItem _$SpecialCategoryItemFromJson(Map<String, dynamic> json) {
  return _SpecialCategoryItem.fromJson(json);
}

/// @nodoc
mixin _$SpecialCategoryItem {
  String? get title => throw _privateConstructorUsedError;
  String? get image => throw _privateConstructorUsedError;
  String? get slug => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $SpecialCategoryItemCopyWith<SpecialCategoryItem> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $SpecialCategoryItemCopyWith<$Res> {
  factory $SpecialCategoryItemCopyWith(
          SpecialCategoryItem value, $Res Function(SpecialCategoryItem) then) =
      _$SpecialCategoryItemCopyWithImpl<$Res, SpecialCategoryItem>;
  @useResult
  $Res call({String? title, String? image, String? slug});
}

/// @nodoc
class _$SpecialCategoryItemCopyWithImpl<$Res, $Val extends SpecialCategoryItem>
    implements $SpecialCategoryItemCopyWith<$Res> {
  _$SpecialCategoryItemCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? title = freezed,
    Object? image = freezed,
    Object? slug = freezed,
  }) {
    return _then(_value.copyWith(
      title: freezed == title
          ? _value.title
          : title // ignore: cast_nullable_to_non_nullable
              as String?,
      image: freezed == image
          ? _value.image
          : image // ignore: cast_nullable_to_non_nullable
              as String?,
      slug: freezed == slug
          ? _value.slug
          : slug // ignore: cast_nullable_to_non_nullable
              as String?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$SpecialCategoryItemImplCopyWith<$Res>
    implements $SpecialCategoryItemCopyWith<$Res> {
  factory _$$SpecialCategoryItemImplCopyWith(_$SpecialCategoryItemImpl value,
          $Res Function(_$SpecialCategoryItemImpl) then) =
      __$$SpecialCategoryItemImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String? title, String? image, String? slug});
}

/// @nodoc
class __$$SpecialCategoryItemImplCopyWithImpl<$Res>
    extends _$SpecialCategoryItemCopyWithImpl<$Res, _$SpecialCategoryItemImpl>
    implements _$$SpecialCategoryItemImplCopyWith<$Res> {
  __$$SpecialCategoryItemImplCopyWithImpl(_$SpecialCategoryItemImpl _value,
      $Res Function(_$SpecialCategoryItemImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? title = freezed,
    Object? image = freezed,
    Object? slug = freezed,
  }) {
    return _then(_$SpecialCategoryItemImpl(
      freezed == title
          ? _value.title
          : title // ignore: cast_nullable_to_non_nullable
              as String?,
      freezed == image
          ? _value.image
          : image // ignore: cast_nullable_to_non_nullable
              as String?,
      freezed == slug
          ? _value.slug
          : slug // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc

@JsonSerializable(explicitToJson: true, fieldRename: FieldRename.snake)
class _$SpecialCategoryItemImpl implements _SpecialCategoryItem {
  const _$SpecialCategoryItemImpl(this.title, this.image, this.slug);

  factory _$SpecialCategoryItemImpl.fromJson(Map<String, dynamic> json) =>
      _$$SpecialCategoryItemImplFromJson(json);

  @override
  final String? title;
  @override
  final String? image;
  @override
  final String? slug;

  @override
  String toString() {
    return 'SpecialCategoryItem(title: $title, image: $image, slug: $slug)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$SpecialCategoryItemImpl &&
            (identical(other.title, title) || other.title == title) &&
            (identical(other.image, image) || other.image == image) &&
            (identical(other.slug, slug) || other.slug == slug));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, title, image, slug);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$SpecialCategoryItemImplCopyWith<_$SpecialCategoryItemImpl> get copyWith =>
      __$$SpecialCategoryItemImplCopyWithImpl<_$SpecialCategoryItemImpl>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$SpecialCategoryItemImplToJson(
      this,
    );
  }
}

abstract class _SpecialCategoryItem implements SpecialCategoryItem {
  const factory _SpecialCategoryItem(
          final String? title, final String? image, final String? slug) =
      _$SpecialCategoryItemImpl;

  factory _SpecialCategoryItem.fromJson(Map<String, dynamic> json) =
      _$SpecialCategoryItemImpl.fromJson;

  @override
  String? get title;
  @override
  String? get image;
  @override
  String? get slug;
  @override
  @JsonKey(ignore: true)
  _$$SpecialCategoryItemImplCopyWith<_$SpecialCategoryItemImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
