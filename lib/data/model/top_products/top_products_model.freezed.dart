// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'top_products_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

TopProductsModel _$TopProductsModelFromJson(Map<String, dynamic> json) {
  return _TopProductsModel.fromJson(json);
}

/// @nodoc
mixin _$TopProductsModel {
  bool? get success => throw _privateConstructorUsedError;
  String? get message => throw _privateConstructorUsedError;
  int? get code => throw _privateConstructorUsedError;
  TopProductsData get data => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $TopProductsModelCopyWith<TopProductsModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $TopProductsModelCopyWith<$Res> {
  factory $TopProductsModelCopyWith(
          TopProductsModel value, $Res Function(TopProductsModel) then) =
      _$TopProductsModelCopyWithImpl<$Res, TopProductsModel>;
  @useResult
  $Res call({bool? success, String? message, int? code, TopProductsData data});

  $TopProductsDataCopyWith<$Res> get data;
}

/// @nodoc
class _$TopProductsModelCopyWithImpl<$Res, $Val extends TopProductsModel>
    implements $TopProductsModelCopyWith<$Res> {
  _$TopProductsModelCopyWithImpl(this._value, this._then);

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
              as TopProductsData,
    ) as $Val);
  }

  @override
  @pragma('vm:prefer-inline')
  $TopProductsDataCopyWith<$Res> get data {
    return $TopProductsDataCopyWith<$Res>(_value.data, (value) {
      return _then(_value.copyWith(data: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$TopProductsModelImplCopyWith<$Res>
    implements $TopProductsModelCopyWith<$Res> {
  factory _$$TopProductsModelImplCopyWith(_$TopProductsModelImpl value,
          $Res Function(_$TopProductsModelImpl) then) =
      __$$TopProductsModelImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({bool? success, String? message, int? code, TopProductsData data});

  @override
  $TopProductsDataCopyWith<$Res> get data;
}

/// @nodoc
class __$$TopProductsModelImplCopyWithImpl<$Res>
    extends _$TopProductsModelCopyWithImpl<$Res, _$TopProductsModelImpl>
    implements _$$TopProductsModelImplCopyWith<$Res> {
  __$$TopProductsModelImplCopyWithImpl(_$TopProductsModelImpl _value,
      $Res Function(_$TopProductsModelImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? success = freezed,
    Object? message = freezed,
    Object? code = freezed,
    Object? data = null,
  }) {
    return _then(_$TopProductsModelImpl(
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
              as TopProductsData,
    ));
  }
}

/// @nodoc

@JsonSerializable(explicitToJson: true, fieldRename: FieldRename.snake)
class _$TopProductsModelImpl implements _TopProductsModel {
  const _$TopProductsModelImpl(
      this.success, this.message, this.code, this.data);

  factory _$TopProductsModelImpl.fromJson(Map<String, dynamic> json) =>
      _$$TopProductsModelImplFromJson(json);

  @override
  final bool? success;
  @override
  final String? message;
  @override
  final int? code;
  @override
  final TopProductsData data;

  @override
  String toString() {
    return 'TopProductsModel(success: $success, message: $message, code: $code, data: $data)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$TopProductsModelImpl &&
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
  _$$TopProductsModelImplCopyWith<_$TopProductsModelImpl> get copyWith =>
      __$$TopProductsModelImplCopyWithImpl<_$TopProductsModelImpl>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$TopProductsModelImplToJson(
      this,
    );
  }
}

abstract class _TopProductsModel implements TopProductsModel {
  const factory _TopProductsModel(final bool? success, final String? message,
      final int? code, final TopProductsData data) = _$TopProductsModelImpl;

  factory _TopProductsModel.fromJson(Map<String, dynamic> json) =
      _$TopProductsModelImpl.fromJson;

  @override
  bool? get success;
  @override
  String? get message;
  @override
  int? get code;
  @override
  TopProductsData get data;
  @override
  @JsonKey(ignore: true)
  _$$TopProductsModelImplCopyWith<_$TopProductsModelImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

TopProductsData _$TopProductsDataFromJson(Map<String, dynamic> json) {
  return _TopProductsData.fromJson(json);
}

/// @nodoc
mixin _$TopProductsData {
  List<TopProductsItem> get data => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $TopProductsDataCopyWith<TopProductsData> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $TopProductsDataCopyWith<$Res> {
  factory $TopProductsDataCopyWith(
          TopProductsData value, $Res Function(TopProductsData) then) =
      _$TopProductsDataCopyWithImpl<$Res, TopProductsData>;
  @useResult
  $Res call({List<TopProductsItem> data});
}

/// @nodoc
class _$TopProductsDataCopyWithImpl<$Res, $Val extends TopProductsData>
    implements $TopProductsDataCopyWith<$Res> {
  _$TopProductsDataCopyWithImpl(this._value, this._then);

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
              as List<TopProductsItem>,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$TopProductsDataImplCopyWith<$Res>
    implements $TopProductsDataCopyWith<$Res> {
  factory _$$TopProductsDataImplCopyWith(_$TopProductsDataImpl value,
          $Res Function(_$TopProductsDataImpl) then) =
      __$$TopProductsDataImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({List<TopProductsItem> data});
}

/// @nodoc
class __$$TopProductsDataImplCopyWithImpl<$Res>
    extends _$TopProductsDataCopyWithImpl<$Res, _$TopProductsDataImpl>
    implements _$$TopProductsDataImplCopyWith<$Res> {
  __$$TopProductsDataImplCopyWithImpl(
      _$TopProductsDataImpl _value, $Res Function(_$TopProductsDataImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? data = null,
  }) {
    return _then(_$TopProductsDataImpl(
      null == data
          ? _value._data
          : data // ignore: cast_nullable_to_non_nullable
              as List<TopProductsItem>,
    ));
  }
}

/// @nodoc

@JsonSerializable(explicitToJson: true, fieldRename: FieldRename.snake)
class _$TopProductsDataImpl implements _TopProductsData {
  const _$TopProductsDataImpl(final List<TopProductsItem> data) : _data = data;

  factory _$TopProductsDataImpl.fromJson(Map<String, dynamic> json) =>
      _$$TopProductsDataImplFromJson(json);

  final List<TopProductsItem> _data;
  @override
  List<TopProductsItem> get data {
    if (_data is EqualUnmodifiableListView) return _data;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_data);
  }

  @override
  String toString() {
    return 'TopProductsData(data: $data)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$TopProductsDataImpl &&
            const DeepCollectionEquality().equals(other._data, _data));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(_data));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$TopProductsDataImplCopyWith<_$TopProductsDataImpl> get copyWith =>
      __$$TopProductsDataImplCopyWithImpl<_$TopProductsDataImpl>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$TopProductsDataImplToJson(
      this,
    );
  }
}

abstract class _TopProductsData implements TopProductsData {
  const factory _TopProductsData(final List<TopProductsItem> data) =
      _$TopProductsDataImpl;

  factory _TopProductsData.fromJson(Map<String, dynamic> json) =
      _$TopProductsDataImpl.fromJson;

  @override
  List<TopProductsItem> get data;
  @override
  @JsonKey(ignore: true)
  _$$TopProductsDataImplCopyWith<_$TopProductsDataImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

TopProductsItem _$TopProductsItemFromJson(Map<String, dynamic> json) {
  return _TopProductsItem.fromJson(json);
}

/// @nodoc
mixin _$TopProductsItem {
  int? get id => throw _privateConstructorUsedError;
  String? get name => throw _privateConstructorUsedError;
  String? get image => throw _privateConstructorUsedError;
  String? get availability => throw _privateConstructorUsedError;
  String? get axiomMonthlyPrice => throw _privateConstructorUsedError;
  int? get salePrice => throw _privateConstructorUsedError;
  int? get oldPrice => throw _privateConstructorUsedError;
  int? get reviewsCount => throw _privateConstructorUsedError;
  int? get reviewsAverage => throw _privateConstructorUsedError;
  int? get allCount => throw _privateConstructorUsedError;
  List<Sticker> get stickers => throw _privateConstructorUsedError;
  List<dynamic> get saleMonths => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $TopProductsItemCopyWith<TopProductsItem> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $TopProductsItemCopyWith<$Res> {
  factory $TopProductsItemCopyWith(
          TopProductsItem value, $Res Function(TopProductsItem) then) =
      _$TopProductsItemCopyWithImpl<$Res, TopProductsItem>;
  @useResult
  $Res call(
      {int? id,
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
      List<dynamic> saleMonths});
}

/// @nodoc
class _$TopProductsItemCopyWithImpl<$Res, $Val extends TopProductsItem>
    implements $TopProductsItemCopyWith<$Res> {
  _$TopProductsItemCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = freezed,
    Object? name = freezed,
    Object? image = freezed,
    Object? availability = freezed,
    Object? axiomMonthlyPrice = freezed,
    Object? salePrice = freezed,
    Object? oldPrice = freezed,
    Object? reviewsCount = freezed,
    Object? reviewsAverage = freezed,
    Object? allCount = freezed,
    Object? stickers = null,
    Object? saleMonths = null,
  }) {
    return _then(_value.copyWith(
      id: freezed == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int?,
      name: freezed == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String?,
      image: freezed == image
          ? _value.image
          : image // ignore: cast_nullable_to_non_nullable
              as String?,
      availability: freezed == availability
          ? _value.availability
          : availability // ignore: cast_nullable_to_non_nullable
              as String?,
      axiomMonthlyPrice: freezed == axiomMonthlyPrice
          ? _value.axiomMonthlyPrice
          : axiomMonthlyPrice // ignore: cast_nullable_to_non_nullable
              as String?,
      salePrice: freezed == salePrice
          ? _value.salePrice
          : salePrice // ignore: cast_nullable_to_non_nullable
              as int?,
      oldPrice: freezed == oldPrice
          ? _value.oldPrice
          : oldPrice // ignore: cast_nullable_to_non_nullable
              as int?,
      reviewsCount: freezed == reviewsCount
          ? _value.reviewsCount
          : reviewsCount // ignore: cast_nullable_to_non_nullable
              as int?,
      reviewsAverage: freezed == reviewsAverage
          ? _value.reviewsAverage
          : reviewsAverage // ignore: cast_nullable_to_non_nullable
              as int?,
      allCount: freezed == allCount
          ? _value.allCount
          : allCount // ignore: cast_nullable_to_non_nullable
              as int?,
      stickers: null == stickers
          ? _value.stickers
          : stickers // ignore: cast_nullable_to_non_nullable
              as List<Sticker>,
      saleMonths: null == saleMonths
          ? _value.saleMonths
          : saleMonths // ignore: cast_nullable_to_non_nullable
              as List<dynamic>,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$TopProductsItemImplCopyWith<$Res>
    implements $TopProductsItemCopyWith<$Res> {
  factory _$$TopProductsItemImplCopyWith(_$TopProductsItemImpl value,
          $Res Function(_$TopProductsItemImpl) then) =
      __$$TopProductsItemImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {int? id,
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
      List<dynamic> saleMonths});
}

/// @nodoc
class __$$TopProductsItemImplCopyWithImpl<$Res>
    extends _$TopProductsItemCopyWithImpl<$Res, _$TopProductsItemImpl>
    implements _$$TopProductsItemImplCopyWith<$Res> {
  __$$TopProductsItemImplCopyWithImpl(
      _$TopProductsItemImpl _value, $Res Function(_$TopProductsItemImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = freezed,
    Object? name = freezed,
    Object? image = freezed,
    Object? availability = freezed,
    Object? axiomMonthlyPrice = freezed,
    Object? salePrice = freezed,
    Object? oldPrice = freezed,
    Object? reviewsCount = freezed,
    Object? reviewsAverage = freezed,
    Object? allCount = freezed,
    Object? stickers = null,
    Object? saleMonths = null,
  }) {
    return _then(_$TopProductsItemImpl(
      freezed == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int?,
      freezed == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String?,
      freezed == image
          ? _value.image
          : image // ignore: cast_nullable_to_non_nullable
              as String?,
      freezed == availability
          ? _value.availability
          : availability // ignore: cast_nullable_to_non_nullable
              as String?,
      freezed == axiomMonthlyPrice
          ? _value.axiomMonthlyPrice
          : axiomMonthlyPrice // ignore: cast_nullable_to_non_nullable
              as String?,
      freezed == salePrice
          ? _value.salePrice
          : salePrice // ignore: cast_nullable_to_non_nullable
              as int?,
      freezed == oldPrice
          ? _value.oldPrice
          : oldPrice // ignore: cast_nullable_to_non_nullable
              as int?,
      freezed == reviewsCount
          ? _value.reviewsCount
          : reviewsCount // ignore: cast_nullable_to_non_nullable
              as int?,
      freezed == reviewsAverage
          ? _value.reviewsAverage
          : reviewsAverage // ignore: cast_nullable_to_non_nullable
              as int?,
      freezed == allCount
          ? _value.allCount
          : allCount // ignore: cast_nullable_to_non_nullable
              as int?,
      null == stickers
          ? _value._stickers
          : stickers // ignore: cast_nullable_to_non_nullable
              as List<Sticker>,
      null == saleMonths
          ? _value._saleMonths
          : saleMonths // ignore: cast_nullable_to_non_nullable
              as List<dynamic>,
    ));
  }
}

/// @nodoc

@JsonSerializable(explicitToJson: true, fieldRename: FieldRename.snake)
class _$TopProductsItemImpl implements _TopProductsItem {
  const _$TopProductsItemImpl(
      this.id,
      this.name,
      this.image,
      this.availability,
      this.axiomMonthlyPrice,
      this.salePrice,
      this.oldPrice,
      this.reviewsCount,
      this.reviewsAverage,
      this.allCount,
      final List<Sticker> stickers,
      final List<dynamic> saleMonths)
      : _stickers = stickers,
        _saleMonths = saleMonths;

  factory _$TopProductsItemImpl.fromJson(Map<String, dynamic> json) =>
      _$$TopProductsItemImplFromJson(json);

  @override
  final int? id;
  @override
  final String? name;
  @override
  final String? image;
  @override
  final String? availability;
  @override
  final String? axiomMonthlyPrice;
  @override
  final int? salePrice;
  @override
  final int? oldPrice;
  @override
  final int? reviewsCount;
  @override
  final int? reviewsAverage;
  @override
  final int? allCount;
  final List<Sticker> _stickers;
  @override
  List<Sticker> get stickers {
    if (_stickers is EqualUnmodifiableListView) return _stickers;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_stickers);
  }

  final List<dynamic> _saleMonths;
  @override
  List<dynamic> get saleMonths {
    if (_saleMonths is EqualUnmodifiableListView) return _saleMonths;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_saleMonths);
  }

  @override
  String toString() {
    return 'TopProductsItem(id: $id, name: $name, image: $image, availability: $availability, axiomMonthlyPrice: $axiomMonthlyPrice, salePrice: $salePrice, oldPrice: $oldPrice, reviewsCount: $reviewsCount, reviewsAverage: $reviewsAverage, allCount: $allCount, stickers: $stickers, saleMonths: $saleMonths)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$TopProductsItemImpl &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.name, name) || other.name == name) &&
            (identical(other.image, image) || other.image == image) &&
            (identical(other.availability, availability) ||
                other.availability == availability) &&
            (identical(other.axiomMonthlyPrice, axiomMonthlyPrice) ||
                other.axiomMonthlyPrice == axiomMonthlyPrice) &&
            (identical(other.salePrice, salePrice) ||
                other.salePrice == salePrice) &&
            (identical(other.oldPrice, oldPrice) ||
                other.oldPrice == oldPrice) &&
            (identical(other.reviewsCount, reviewsCount) ||
                other.reviewsCount == reviewsCount) &&
            (identical(other.reviewsAverage, reviewsAverage) ||
                other.reviewsAverage == reviewsAverage) &&
            (identical(other.allCount, allCount) ||
                other.allCount == allCount) &&
            const DeepCollectionEquality().equals(other._stickers, _stickers) &&
            const DeepCollectionEquality()
                .equals(other._saleMonths, _saleMonths));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      id,
      name,
      image,
      availability,
      axiomMonthlyPrice,
      salePrice,
      oldPrice,
      reviewsCount,
      reviewsAverage,
      allCount,
      const DeepCollectionEquality().hash(_stickers),
      const DeepCollectionEquality().hash(_saleMonths));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$TopProductsItemImplCopyWith<_$TopProductsItemImpl> get copyWith =>
      __$$TopProductsItemImplCopyWithImpl<_$TopProductsItemImpl>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$TopProductsItemImplToJson(
      this,
    );
  }
}

abstract class _TopProductsItem implements TopProductsItem {
  const factory _TopProductsItem(
      final int? id,
      final String? name,
      final String? image,
      final String? availability,
      final String? axiomMonthlyPrice,
      final int? salePrice,
      final int? oldPrice,
      final int? reviewsCount,
      final int? reviewsAverage,
      final int? allCount,
      final List<Sticker> stickers,
      final List<dynamic> saleMonths) = _$TopProductsItemImpl;

  factory _TopProductsItem.fromJson(Map<String, dynamic> json) =
      _$TopProductsItemImpl.fromJson;

  @override
  int? get id;
  @override
  String? get name;
  @override
  String? get image;
  @override
  String? get availability;
  @override
  String? get axiomMonthlyPrice;
  @override
  int? get salePrice;
  @override
  int? get oldPrice;
  @override
  int? get reviewsCount;
  @override
  int? get reviewsAverage;
  @override
  int? get allCount;
  @override
  List<Sticker> get stickers;
  @override
  List<dynamic> get saleMonths;
  @override
  @JsonKey(ignore: true)
  _$$TopProductsItemImplCopyWith<_$TopProductsItemImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

Sticker _$StickerFromJson(Map<String, dynamic> json) {
  return _Sticker.fromJson(json);
}

/// @nodoc
mixin _$Sticker {
  String get name => throw _privateConstructorUsedError;
  String get backgroundColor => throw _privateConstructorUsedError;
  String get textColor => throw _privateConstructorUsedError;
  bool get isImage => throw _privateConstructorUsedError;
  bool get showInCard => throw _privateConstructorUsedError;
  dynamic get image => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $StickerCopyWith<Sticker> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $StickerCopyWith<$Res> {
  factory $StickerCopyWith(Sticker value, $Res Function(Sticker) then) =
      _$StickerCopyWithImpl<$Res, Sticker>;
  @useResult
  $Res call(
      {String name,
      String backgroundColor,
      String textColor,
      bool isImage,
      bool showInCard,
      dynamic image});
}

/// @nodoc
class _$StickerCopyWithImpl<$Res, $Val extends Sticker>
    implements $StickerCopyWith<$Res> {
  _$StickerCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? name = null,
    Object? backgroundColor = null,
    Object? textColor = null,
    Object? isImage = null,
    Object? showInCard = null,
    Object? image = freezed,
  }) {
    return _then(_value.copyWith(
      name: null == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      backgroundColor: null == backgroundColor
          ? _value.backgroundColor
          : backgroundColor // ignore: cast_nullable_to_non_nullable
              as String,
      textColor: null == textColor
          ? _value.textColor
          : textColor // ignore: cast_nullable_to_non_nullable
              as String,
      isImage: null == isImage
          ? _value.isImage
          : isImage // ignore: cast_nullable_to_non_nullable
              as bool,
      showInCard: null == showInCard
          ? _value.showInCard
          : showInCard // ignore: cast_nullable_to_non_nullable
              as bool,
      image: freezed == image
          ? _value.image
          : image // ignore: cast_nullable_to_non_nullable
              as dynamic,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$StickerImplCopyWith<$Res> implements $StickerCopyWith<$Res> {
  factory _$$StickerImplCopyWith(
          _$StickerImpl value, $Res Function(_$StickerImpl) then) =
      __$$StickerImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {String name,
      String backgroundColor,
      String textColor,
      bool isImage,
      bool showInCard,
      dynamic image});
}

/// @nodoc
class __$$StickerImplCopyWithImpl<$Res>
    extends _$StickerCopyWithImpl<$Res, _$StickerImpl>
    implements _$$StickerImplCopyWith<$Res> {
  __$$StickerImplCopyWithImpl(
      _$StickerImpl _value, $Res Function(_$StickerImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? name = null,
    Object? backgroundColor = null,
    Object? textColor = null,
    Object? isImage = null,
    Object? showInCard = null,
    Object? image = freezed,
  }) {
    return _then(_$StickerImpl(
      null == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      null == backgroundColor
          ? _value.backgroundColor
          : backgroundColor // ignore: cast_nullable_to_non_nullable
              as String,
      null == textColor
          ? _value.textColor
          : textColor // ignore: cast_nullable_to_non_nullable
              as String,
      null == isImage
          ? _value.isImage
          : isImage // ignore: cast_nullable_to_non_nullable
              as bool,
      null == showInCard
          ? _value.showInCard
          : showInCard // ignore: cast_nullable_to_non_nullable
              as bool,
      freezed == image
          ? _value.image
          : image // ignore: cast_nullable_to_non_nullable
              as dynamic,
    ));
  }
}

/// @nodoc

@JsonSerializable(explicitToJson: true, fieldRename: FieldRename.snake)
class _$StickerImpl implements _Sticker {
  const _$StickerImpl(this.name, this.backgroundColor, this.textColor,
      this.isImage, this.showInCard, this.image);

  factory _$StickerImpl.fromJson(Map<String, dynamic> json) =>
      _$$StickerImplFromJson(json);

  @override
  final String name;
  @override
  final String backgroundColor;
  @override
  final String textColor;
  @override
  final bool isImage;
  @override
  final bool showInCard;
  @override
  final dynamic image;

  @override
  String toString() {
    return 'Sticker(name: $name, backgroundColor: $backgroundColor, textColor: $textColor, isImage: $isImage, showInCard: $showInCard, image: $image)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$StickerImpl &&
            (identical(other.name, name) || other.name == name) &&
            (identical(other.backgroundColor, backgroundColor) ||
                other.backgroundColor == backgroundColor) &&
            (identical(other.textColor, textColor) ||
                other.textColor == textColor) &&
            (identical(other.isImage, isImage) || other.isImage == isImage) &&
            (identical(other.showInCard, showInCard) ||
                other.showInCard == showInCard) &&
            const DeepCollectionEquality().equals(other.image, image));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, name, backgroundColor, textColor,
      isImage, showInCard, const DeepCollectionEquality().hash(image));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$StickerImplCopyWith<_$StickerImpl> get copyWith =>
      __$$StickerImplCopyWithImpl<_$StickerImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$StickerImplToJson(
      this,
    );
  }
}

abstract class _Sticker implements Sticker {
  const factory _Sticker(
      final String name,
      final String backgroundColor,
      final String textColor,
      final bool isImage,
      final bool showInCard,
      final dynamic image) = _$StickerImpl;

  factory _Sticker.fromJson(Map<String, dynamic> json) = _$StickerImpl.fromJson;

  @override
  String get name;
  @override
  String get backgroundColor;
  @override
  String get textColor;
  @override
  bool get isImage;
  @override
  bool get showInCard;
  @override
  dynamic get image;
  @override
  @JsonKey(ignore: true)
  _$$StickerImplCopyWith<_$StickerImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
