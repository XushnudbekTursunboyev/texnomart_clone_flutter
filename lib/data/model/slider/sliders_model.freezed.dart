// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'sliders_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

SlidersModel _$SlidersModelFromJson(Map<String, dynamic> json) {
  return _SlidersModel.fromJson(json);
}

/// @nodoc
mixin _$SlidersModel {
  bool? get success => throw _privateConstructorUsedError;
  String? get message => throw _privateConstructorUsedError;
  int? get code => throw _privateConstructorUsedError;
  SlidersData get data => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $SlidersModelCopyWith<SlidersModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $SlidersModelCopyWith<$Res> {
  factory $SlidersModelCopyWith(
          SlidersModel value, $Res Function(SlidersModel) then) =
      _$SlidersModelCopyWithImpl<$Res, SlidersModel>;
  @useResult
  $Res call({bool? success, String? message, int? code, SlidersData data});

  $SlidersDataCopyWith<$Res> get data;
}

/// @nodoc
class _$SlidersModelCopyWithImpl<$Res, $Val extends SlidersModel>
    implements $SlidersModelCopyWith<$Res> {
  _$SlidersModelCopyWithImpl(this._value, this._then);

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
              as SlidersData,
    ) as $Val);
  }

  @override
  @pragma('vm:prefer-inline')
  $SlidersDataCopyWith<$Res> get data {
    return $SlidersDataCopyWith<$Res>(_value.data, (value) {
      return _then(_value.copyWith(data: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$SlidersModelImplCopyWith<$Res>
    implements $SlidersModelCopyWith<$Res> {
  factory _$$SlidersModelImplCopyWith(
          _$SlidersModelImpl value, $Res Function(_$SlidersModelImpl) then) =
      __$$SlidersModelImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({bool? success, String? message, int? code, SlidersData data});

  @override
  $SlidersDataCopyWith<$Res> get data;
}

/// @nodoc
class __$$SlidersModelImplCopyWithImpl<$Res>
    extends _$SlidersModelCopyWithImpl<$Res, _$SlidersModelImpl>
    implements _$$SlidersModelImplCopyWith<$Res> {
  __$$SlidersModelImplCopyWithImpl(
      _$SlidersModelImpl _value, $Res Function(_$SlidersModelImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? success = freezed,
    Object? message = freezed,
    Object? code = freezed,
    Object? data = null,
  }) {
    return _then(_$SlidersModelImpl(
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
              as SlidersData,
    ));
  }
}

/// @nodoc

@JsonSerializable(explicitToJson: true, fieldRename: FieldRename.snake)
class _$SlidersModelImpl implements _SlidersModel {
  const _$SlidersModelImpl(this.success, this.message, this.code, this.data);

  factory _$SlidersModelImpl.fromJson(Map<String, dynamic> json) =>
      _$$SlidersModelImplFromJson(json);

  @override
  final bool? success;
  @override
  final String? message;
  @override
  final int? code;
  @override
  final SlidersData data;

  @override
  String toString() {
    return 'SlidersModel(success: $success, message: $message, code: $code, data: $data)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$SlidersModelImpl &&
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
  _$$SlidersModelImplCopyWith<_$SlidersModelImpl> get copyWith =>
      __$$SlidersModelImplCopyWithImpl<_$SlidersModelImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$SlidersModelImplToJson(
      this,
    );
  }
}

abstract class _SlidersModel implements SlidersModel {
  const factory _SlidersModel(final bool? success, final String? message,
      final int? code, final SlidersData data) = _$SlidersModelImpl;

  factory _SlidersModel.fromJson(Map<String, dynamic> json) =
      _$SlidersModelImpl.fromJson;

  @override
  bool? get success;
  @override
  String? get message;
  @override
  int? get code;
  @override
  SlidersData get data;
  @override
  @JsonKey(ignore: true)
  _$$SlidersModelImplCopyWith<_$SlidersModelImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

SlidersData _$SlidersDataFromJson(Map<String, dynamic> json) {
  return _SlidersData.fromJson(json);
}

/// @nodoc
mixin _$SlidersData {
  List<SlidersModelItem>? get data => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $SlidersDataCopyWith<SlidersData> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $SlidersDataCopyWith<$Res> {
  factory $SlidersDataCopyWith(
          SlidersData value, $Res Function(SlidersData) then) =
      _$SlidersDataCopyWithImpl<$Res, SlidersData>;
  @useResult
  $Res call({List<SlidersModelItem>? data});
}

/// @nodoc
class _$SlidersDataCopyWithImpl<$Res, $Val extends SlidersData>
    implements $SlidersDataCopyWith<$Res> {
  _$SlidersDataCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? data = freezed,
  }) {
    return _then(_value.copyWith(
      data: freezed == data
          ? _value.data
          : data // ignore: cast_nullable_to_non_nullable
              as List<SlidersModelItem>?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$SlidersDataImplCopyWith<$Res>
    implements $SlidersDataCopyWith<$Res> {
  factory _$$SlidersDataImplCopyWith(
          _$SlidersDataImpl value, $Res Function(_$SlidersDataImpl) then) =
      __$$SlidersDataImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({List<SlidersModelItem>? data});
}

/// @nodoc
class __$$SlidersDataImplCopyWithImpl<$Res>
    extends _$SlidersDataCopyWithImpl<$Res, _$SlidersDataImpl>
    implements _$$SlidersDataImplCopyWith<$Res> {
  __$$SlidersDataImplCopyWithImpl(
      _$SlidersDataImpl _value, $Res Function(_$SlidersDataImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? data = freezed,
  }) {
    return _then(_$SlidersDataImpl(
      freezed == data
          ? _value._data
          : data // ignore: cast_nullable_to_non_nullable
              as List<SlidersModelItem>?,
    ));
  }
}

/// @nodoc

@JsonSerializable(explicitToJson: true, fieldRename: FieldRename.snake)
class _$SlidersDataImpl implements _SlidersData {
  const _$SlidersDataImpl(final List<SlidersModelItem>? data) : _data = data;

  factory _$SlidersDataImpl.fromJson(Map<String, dynamic> json) =>
      _$$SlidersDataImplFromJson(json);

  final List<SlidersModelItem>? _data;
  @override
  List<SlidersModelItem>? get data {
    final value = _data;
    if (value == null) return null;
    if (_data is EqualUnmodifiableListView) return _data;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  @override
  String toString() {
    return 'SlidersData(data: $data)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$SlidersDataImpl &&
            const DeepCollectionEquality().equals(other._data, _data));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(_data));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$SlidersDataImplCopyWith<_$SlidersDataImpl> get copyWith =>
      __$$SlidersDataImplCopyWithImpl<_$SlidersDataImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$SlidersDataImplToJson(
      this,
    );
  }
}

abstract class _SlidersData implements SlidersData {
  const factory _SlidersData(final List<SlidersModelItem>? data) =
      _$SlidersDataImpl;

  factory _SlidersData.fromJson(Map<String, dynamic> json) =
      _$SlidersDataImpl.fromJson;

  @override
  List<SlidersModelItem>? get data;
  @override
  @JsonKey(ignore: true)
  _$$SlidersDataImplCopyWith<_$SlidersDataImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

SlidersModelItem _$SlidersModelItemFromJson(Map<String, dynamic> json) {
  return _SlidersModelItem.fromJson(json);
}

/// @nodoc
mixin _$SlidersModelItem {
  int? get id => throw _privateConstructorUsedError;
  String? get link => throw _privateConstructorUsedError;
  String? get title => throw _privateConstructorUsedError;
  String? get imageWeb => throw _privateConstructorUsedError;
  String? get imageMobileWeb => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $SlidersModelItemCopyWith<SlidersModelItem> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $SlidersModelItemCopyWith<$Res> {
  factory $SlidersModelItemCopyWith(
          SlidersModelItem value, $Res Function(SlidersModelItem) then) =
      _$SlidersModelItemCopyWithImpl<$Res, SlidersModelItem>;
  @useResult
  $Res call(
      {int? id,
      String? link,
      String? title,
      String? imageWeb,
      String? imageMobileWeb});
}

/// @nodoc
class _$SlidersModelItemCopyWithImpl<$Res, $Val extends SlidersModelItem>
    implements $SlidersModelItemCopyWith<$Res> {
  _$SlidersModelItemCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = freezed,
    Object? link = freezed,
    Object? title = freezed,
    Object? imageWeb = freezed,
    Object? imageMobileWeb = freezed,
  }) {
    return _then(_value.copyWith(
      id: freezed == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int?,
      link: freezed == link
          ? _value.link
          : link // ignore: cast_nullable_to_non_nullable
              as String?,
      title: freezed == title
          ? _value.title
          : title // ignore: cast_nullable_to_non_nullable
              as String?,
      imageWeb: freezed == imageWeb
          ? _value.imageWeb
          : imageWeb // ignore: cast_nullable_to_non_nullable
              as String?,
      imageMobileWeb: freezed == imageMobileWeb
          ? _value.imageMobileWeb
          : imageMobileWeb // ignore: cast_nullable_to_non_nullable
              as String?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$SlidersModelItemImplCopyWith<$Res>
    implements $SlidersModelItemCopyWith<$Res> {
  factory _$$SlidersModelItemImplCopyWith(_$SlidersModelItemImpl value,
          $Res Function(_$SlidersModelItemImpl) then) =
      __$$SlidersModelItemImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {int? id,
      String? link,
      String? title,
      String? imageWeb,
      String? imageMobileWeb});
}

/// @nodoc
class __$$SlidersModelItemImplCopyWithImpl<$Res>
    extends _$SlidersModelItemCopyWithImpl<$Res, _$SlidersModelItemImpl>
    implements _$$SlidersModelItemImplCopyWith<$Res> {
  __$$SlidersModelItemImplCopyWithImpl(_$SlidersModelItemImpl _value,
      $Res Function(_$SlidersModelItemImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = freezed,
    Object? link = freezed,
    Object? title = freezed,
    Object? imageWeb = freezed,
    Object? imageMobileWeb = freezed,
  }) {
    return _then(_$SlidersModelItemImpl(
      freezed == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int?,
      freezed == link
          ? _value.link
          : link // ignore: cast_nullable_to_non_nullable
              as String?,
      freezed == title
          ? _value.title
          : title // ignore: cast_nullable_to_non_nullable
              as String?,
      freezed == imageWeb
          ? _value.imageWeb
          : imageWeb // ignore: cast_nullable_to_non_nullable
              as String?,
      freezed == imageMobileWeb
          ? _value.imageMobileWeb
          : imageMobileWeb // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc

@JsonSerializable(explicitToJson: true, fieldRename: FieldRename.snake)
class _$SlidersModelItemImpl implements _SlidersModelItem {
  const _$SlidersModelItemImpl(
      this.id, this.link, this.title, this.imageWeb, this.imageMobileWeb);

  factory _$SlidersModelItemImpl.fromJson(Map<String, dynamic> json) =>
      _$$SlidersModelItemImplFromJson(json);

  @override
  final int? id;
  @override
  final String? link;
  @override
  final String? title;
  @override
  final String? imageWeb;
  @override
  final String? imageMobileWeb;

  @override
  String toString() {
    return 'SlidersModelItem(id: $id, link: $link, title: $title, imageWeb: $imageWeb, imageMobileWeb: $imageMobileWeb)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$SlidersModelItemImpl &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.link, link) || other.link == link) &&
            (identical(other.title, title) || other.title == title) &&
            (identical(other.imageWeb, imageWeb) ||
                other.imageWeb == imageWeb) &&
            (identical(other.imageMobileWeb, imageMobileWeb) ||
                other.imageMobileWeb == imageMobileWeb));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode =>
      Object.hash(runtimeType, id, link, title, imageWeb, imageMobileWeb);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$SlidersModelItemImplCopyWith<_$SlidersModelItemImpl> get copyWith =>
      __$$SlidersModelItemImplCopyWithImpl<_$SlidersModelItemImpl>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$SlidersModelItemImplToJson(
      this,
    );
  }
}

abstract class _SlidersModelItem implements SlidersModelItem {
  const factory _SlidersModelItem(
      final int? id,
      final String? link,
      final String? title,
      final String? imageWeb,
      final String? imageMobileWeb) = _$SlidersModelItemImpl;

  factory _SlidersModelItem.fromJson(Map<String, dynamic> json) =
      _$SlidersModelItemImpl.fromJson;

  @override
  int? get id;
  @override
  String? get link;
  @override
  String? get title;
  @override
  String? get imageWeb;
  @override
  String? get imageMobileWeb;
  @override
  @JsonKey(ignore: true)
  _$$SlidersModelItemImplCopyWith<_$SlidersModelItemImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
