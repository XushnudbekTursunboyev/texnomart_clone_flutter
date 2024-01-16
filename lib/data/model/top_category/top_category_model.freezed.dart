// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'top_category_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

TopCategoryModel _$TopCategoryModelFromJson(Map<String, dynamic> json) {
  return _TopCategoryModel.fromJson(json);
}

/// @nodoc
mixin _$TopCategoryModel {
  bool? get success => throw _privateConstructorUsedError;
  String? get message => throw _privateConstructorUsedError;
  int? get code => throw _privateConstructorUsedError;
  TopCategoryData get data => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $TopCategoryModelCopyWith<TopCategoryModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $TopCategoryModelCopyWith<$Res> {
  factory $TopCategoryModelCopyWith(
          TopCategoryModel value, $Res Function(TopCategoryModel) then) =
      _$TopCategoryModelCopyWithImpl<$Res, TopCategoryModel>;
  @useResult
  $Res call({bool? success, String? message, int? code, TopCategoryData data});

  $TopCategoryDataCopyWith<$Res> get data;
}

/// @nodoc
class _$TopCategoryModelCopyWithImpl<$Res, $Val extends TopCategoryModel>
    implements $TopCategoryModelCopyWith<$Res> {
  _$TopCategoryModelCopyWithImpl(this._value, this._then);

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
              as TopCategoryData,
    ) as $Val);
  }

  @override
  @pragma('vm:prefer-inline')
  $TopCategoryDataCopyWith<$Res> get data {
    return $TopCategoryDataCopyWith<$Res>(_value.data, (value) {
      return _then(_value.copyWith(data: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$TopCategoryModelImplCopyWith<$Res>
    implements $TopCategoryModelCopyWith<$Res> {
  factory _$$TopCategoryModelImplCopyWith(_$TopCategoryModelImpl value,
          $Res Function(_$TopCategoryModelImpl) then) =
      __$$TopCategoryModelImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({bool? success, String? message, int? code, TopCategoryData data});

  @override
  $TopCategoryDataCopyWith<$Res> get data;
}

/// @nodoc
class __$$TopCategoryModelImplCopyWithImpl<$Res>
    extends _$TopCategoryModelCopyWithImpl<$Res, _$TopCategoryModelImpl>
    implements _$$TopCategoryModelImplCopyWith<$Res> {
  __$$TopCategoryModelImplCopyWithImpl(_$TopCategoryModelImpl _value,
      $Res Function(_$TopCategoryModelImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? success = freezed,
    Object? message = freezed,
    Object? code = freezed,
    Object? data = null,
  }) {
    return _then(_$TopCategoryModelImpl(
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
              as TopCategoryData,
    ));
  }
}

/// @nodoc

@JsonSerializable(explicitToJson: true, fieldRename: FieldRename.snake)
class _$TopCategoryModelImpl implements _TopCategoryModel {
  const _$TopCategoryModelImpl(
      this.success, this.message, this.code, this.data);

  factory _$TopCategoryModelImpl.fromJson(Map<String, dynamic> json) =>
      _$$TopCategoryModelImplFromJson(json);

  @override
  final bool? success;
  @override
  final String? message;
  @override
  final int? code;
  @override
  final TopCategoryData data;

  @override
  String toString() {
    return 'TopCategoryModel(success: $success, message: $message, code: $code, data: $data)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$TopCategoryModelImpl &&
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
  _$$TopCategoryModelImplCopyWith<_$TopCategoryModelImpl> get copyWith =>
      __$$TopCategoryModelImplCopyWithImpl<_$TopCategoryModelImpl>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$TopCategoryModelImplToJson(
      this,
    );
  }
}

abstract class _TopCategoryModel implements TopCategoryModel {
  const factory _TopCategoryModel(final bool? success, final String? message,
      final int? code, final TopCategoryData data) = _$TopCategoryModelImpl;

  factory _TopCategoryModel.fromJson(Map<String, dynamic> json) =
      _$TopCategoryModelImpl.fromJson;

  @override
  bool? get success;
  @override
  String? get message;
  @override
  int? get code;
  @override
  TopCategoryData get data;
  @override
  @JsonKey(ignore: true)
  _$$TopCategoryModelImplCopyWith<_$TopCategoryModelImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

TopCategoryData _$TopCategoryDataFromJson(Map<String, dynamic> json) {
  return _TopCategoryData.fromJson(json);
}

/// @nodoc
mixin _$TopCategoryData {
  List<TopCategoryItem> get data => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $TopCategoryDataCopyWith<TopCategoryData> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $TopCategoryDataCopyWith<$Res> {
  factory $TopCategoryDataCopyWith(
          TopCategoryData value, $Res Function(TopCategoryData) then) =
      _$TopCategoryDataCopyWithImpl<$Res, TopCategoryData>;
  @useResult
  $Res call({List<TopCategoryItem> data});
}

/// @nodoc
class _$TopCategoryDataCopyWithImpl<$Res, $Val extends TopCategoryData>
    implements $TopCategoryDataCopyWith<$Res> {
  _$TopCategoryDataCopyWithImpl(this._value, this._then);

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
              as List<TopCategoryItem>,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$TopCategoryDataImplCopyWith<$Res>
    implements $TopCategoryDataCopyWith<$Res> {
  factory _$$TopCategoryDataImplCopyWith(_$TopCategoryDataImpl value,
          $Res Function(_$TopCategoryDataImpl) then) =
      __$$TopCategoryDataImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({List<TopCategoryItem> data});
}

/// @nodoc
class __$$TopCategoryDataImplCopyWithImpl<$Res>
    extends _$TopCategoryDataCopyWithImpl<$Res, _$TopCategoryDataImpl>
    implements _$$TopCategoryDataImplCopyWith<$Res> {
  __$$TopCategoryDataImplCopyWithImpl(
      _$TopCategoryDataImpl _value, $Res Function(_$TopCategoryDataImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? data = null,
  }) {
    return _then(_$TopCategoryDataImpl(
      null == data
          ? _value._data
          : data // ignore: cast_nullable_to_non_nullable
              as List<TopCategoryItem>,
    ));
  }
}

/// @nodoc

@JsonSerializable(explicitToJson: true, fieldRename: FieldRename.snake)
class _$TopCategoryDataImpl implements _TopCategoryData {
  const _$TopCategoryDataImpl(final List<TopCategoryItem> data) : _data = data;

  factory _$TopCategoryDataImpl.fromJson(Map<String, dynamic> json) =>
      _$$TopCategoryDataImplFromJson(json);

  final List<TopCategoryItem> _data;
  @override
  List<TopCategoryItem> get data {
    if (_data is EqualUnmodifiableListView) return _data;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_data);
  }

  @override
  String toString() {
    return 'TopCategoryData(data: $data)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$TopCategoryDataImpl &&
            const DeepCollectionEquality().equals(other._data, _data));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(_data));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$TopCategoryDataImplCopyWith<_$TopCategoryDataImpl> get copyWith =>
      __$$TopCategoryDataImplCopyWithImpl<_$TopCategoryDataImpl>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$TopCategoryDataImplToJson(
      this,
    );
  }
}

abstract class _TopCategoryData implements TopCategoryData {
  const factory _TopCategoryData(final List<TopCategoryItem> data) =
      _$TopCategoryDataImpl;

  factory _TopCategoryData.fromJson(Map<String, dynamic> json) =
      _$TopCategoryDataImpl.fromJson;

  @override
  List<TopCategoryItem> get data;
  @override
  @JsonKey(ignore: true)
  _$$TopCategoryDataImplCopyWith<_$TopCategoryDataImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

TopCategoryItem _$TopCategoryItemFromJson(Map<String, dynamic> json) {
  return _TopCategoryItem.fromJson(json);
}

/// @nodoc
mixin _$TopCategoryItem {
  String? get title => throw _privateConstructorUsedError;
  String? get slug => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $TopCategoryItemCopyWith<TopCategoryItem> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $TopCategoryItemCopyWith<$Res> {
  factory $TopCategoryItemCopyWith(
          TopCategoryItem value, $Res Function(TopCategoryItem) then) =
      _$TopCategoryItemCopyWithImpl<$Res, TopCategoryItem>;
  @useResult
  $Res call({String? title, String? slug});
}

/// @nodoc
class _$TopCategoryItemCopyWithImpl<$Res, $Val extends TopCategoryItem>
    implements $TopCategoryItemCopyWith<$Res> {
  _$TopCategoryItemCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? title = freezed,
    Object? slug = freezed,
  }) {
    return _then(_value.copyWith(
      title: freezed == title
          ? _value.title
          : title // ignore: cast_nullable_to_non_nullable
              as String?,
      slug: freezed == slug
          ? _value.slug
          : slug // ignore: cast_nullable_to_non_nullable
              as String?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$TopCategoryItemImplCopyWith<$Res>
    implements $TopCategoryItemCopyWith<$Res> {
  factory _$$TopCategoryItemImplCopyWith(_$TopCategoryItemImpl value,
          $Res Function(_$TopCategoryItemImpl) then) =
      __$$TopCategoryItemImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String? title, String? slug});
}

/// @nodoc
class __$$TopCategoryItemImplCopyWithImpl<$Res>
    extends _$TopCategoryItemCopyWithImpl<$Res, _$TopCategoryItemImpl>
    implements _$$TopCategoryItemImplCopyWith<$Res> {
  __$$TopCategoryItemImplCopyWithImpl(
      _$TopCategoryItemImpl _value, $Res Function(_$TopCategoryItemImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? title = freezed,
    Object? slug = freezed,
  }) {
    return _then(_$TopCategoryItemImpl(
      freezed == title
          ? _value.title
          : title // ignore: cast_nullable_to_non_nullable
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
class _$TopCategoryItemImpl implements _TopCategoryItem {
  const _$TopCategoryItemImpl(this.title, this.slug);

  factory _$TopCategoryItemImpl.fromJson(Map<String, dynamic> json) =>
      _$$TopCategoryItemImplFromJson(json);

  @override
  final String? title;
  @override
  final String? slug;

  @override
  String toString() {
    return 'TopCategoryItem(title: $title, slug: $slug)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$TopCategoryItemImpl &&
            (identical(other.title, title) || other.title == title) &&
            (identical(other.slug, slug) || other.slug == slug));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, title, slug);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$TopCategoryItemImplCopyWith<_$TopCategoryItemImpl> get copyWith =>
      __$$TopCategoryItemImplCopyWithImpl<_$TopCategoryItemImpl>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$TopCategoryItemImplToJson(
      this,
    );
  }
}

abstract class _TopCategoryItem implements TopCategoryItem {
  const factory _TopCategoryItem(final String? title, final String? slug) =
      _$TopCategoryItemImpl;

  factory _TopCategoryItem.fromJson(Map<String, dynamic> json) =
      _$TopCategoryItemImpl.fromJson;

  @override
  String? get title;
  @override
  String? get slug;
  @override
  @JsonKey(ignore: true)
  _$$TopCategoryItemImplCopyWith<_$TopCategoryItemImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
