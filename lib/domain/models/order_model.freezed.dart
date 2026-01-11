// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'order_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

OrderModel _$OrderModelFromJson(Map<String, dynamic> json) {
  return _OrderModel.fromJson(json);
}

/// @nodoc
mixin _$OrderModel {
  String get customerName => throw _privateConstructorUsedError;
  String get customerImage => throw _privateConstructorUsedError;
  String get productName => throw _privateConstructorUsedError;
  String get productImage => throw _privateConstructorUsedError;
  String get userId => throw _privateConstructorUsedError;
  String get orderedPlaced => throw _privateConstructorUsedError;
  double get amount => throw _privateConstructorUsedError;
  String get paymentStatus => throw _privateConstructorUsedError;

  /// Serializes this OrderModel to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of OrderModel
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $OrderModelCopyWith<OrderModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $OrderModelCopyWith<$Res> {
  factory $OrderModelCopyWith(
          OrderModel value, $Res Function(OrderModel) then) =
      _$OrderModelCopyWithImpl<$Res, OrderModel>;
  @useResult
  $Res call(
      {String customerName,
      String customerImage,
      String productName,
      String productImage,
      String userId,
      String orderedPlaced,
      double amount,
      String paymentStatus});
}

/// @nodoc
class _$OrderModelCopyWithImpl<$Res, $Val extends OrderModel>
    implements $OrderModelCopyWith<$Res> {
  _$OrderModelCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of OrderModel
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? customerName = null,
    Object? customerImage = null,
    Object? productName = null,
    Object? productImage = null,
    Object? userId = null,
    Object? orderedPlaced = null,
    Object? amount = null,
    Object? paymentStatus = null,
  }) {
    return _then(_value.copyWith(
      customerName: null == customerName
          ? _value.customerName
          : customerName // ignore: cast_nullable_to_non_nullable
              as String,
      customerImage: null == customerImage
          ? _value.customerImage
          : customerImage // ignore: cast_nullable_to_non_nullable
              as String,
      productName: null == productName
          ? _value.productName
          : productName // ignore: cast_nullable_to_non_nullable
              as String,
      productImage: null == productImage
          ? _value.productImage
          : productImage // ignore: cast_nullable_to_non_nullable
              as String,
      userId: null == userId
          ? _value.userId
          : userId // ignore: cast_nullable_to_non_nullable
              as String,
      orderedPlaced: null == orderedPlaced
          ? _value.orderedPlaced
          : orderedPlaced // ignore: cast_nullable_to_non_nullable
              as String,
      amount: null == amount
          ? _value.amount
          : amount // ignore: cast_nullable_to_non_nullable
              as double,
      paymentStatus: null == paymentStatus
          ? _value.paymentStatus
          : paymentStatus // ignore: cast_nullable_to_non_nullable
              as String,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$OrderModelImplCopyWith<$Res>
    implements $OrderModelCopyWith<$Res> {
  factory _$$OrderModelImplCopyWith(
          _$OrderModelImpl value, $Res Function(_$OrderModelImpl) then) =
      __$$OrderModelImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {String customerName,
      String customerImage,
      String productName,
      String productImage,
      String userId,
      String orderedPlaced,
      double amount,
      String paymentStatus});
}

/// @nodoc
class __$$OrderModelImplCopyWithImpl<$Res>
    extends _$OrderModelCopyWithImpl<$Res, _$OrderModelImpl>
    implements _$$OrderModelImplCopyWith<$Res> {
  __$$OrderModelImplCopyWithImpl(
      _$OrderModelImpl _value, $Res Function(_$OrderModelImpl) _then)
      : super(_value, _then);

  /// Create a copy of OrderModel
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? customerName = null,
    Object? customerImage = null,
    Object? productName = null,
    Object? productImage = null,
    Object? userId = null,
    Object? orderedPlaced = null,
    Object? amount = null,
    Object? paymentStatus = null,
  }) {
    return _then(_$OrderModelImpl(
      customerName: null == customerName
          ? _value.customerName
          : customerName // ignore: cast_nullable_to_non_nullable
              as String,
      customerImage: null == customerImage
          ? _value.customerImage
          : customerImage // ignore: cast_nullable_to_non_nullable
              as String,
      productName: null == productName
          ? _value.productName
          : productName // ignore: cast_nullable_to_non_nullable
              as String,
      productImage: null == productImage
          ? _value.productImage
          : productImage // ignore: cast_nullable_to_non_nullable
              as String,
      userId: null == userId
          ? _value.userId
          : userId // ignore: cast_nullable_to_non_nullable
              as String,
      orderedPlaced: null == orderedPlaced
          ? _value.orderedPlaced
          : orderedPlaced // ignore: cast_nullable_to_non_nullable
              as String,
      amount: null == amount
          ? _value.amount
          : amount // ignore: cast_nullable_to_non_nullable
              as double,
      paymentStatus: null == paymentStatus
          ? _value.paymentStatus
          : paymentStatus // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$OrderModelImpl implements _OrderModel {
  const _$OrderModelImpl(
      {required this.customerName,
      required this.customerImage,
      required this.productName,
      required this.productImage,
      required this.userId,
      required this.orderedPlaced,
      required this.amount,
      required this.paymentStatus});

  factory _$OrderModelImpl.fromJson(Map<String, dynamic> json) =>
      _$$OrderModelImplFromJson(json);

  @override
  final String customerName;
  @override
  final String customerImage;
  @override
  final String productName;
  @override
  final String productImage;
  @override
  final String userId;
  @override
  final String orderedPlaced;
  @override
  final double amount;
  @override
  final String paymentStatus;

  @override
  String toString() {
    return 'OrderModel(customerName: $customerName, customerImage: $customerImage, productName: $productName, productImage: $productImage, userId: $userId, orderedPlaced: $orderedPlaced, amount: $amount, paymentStatus: $paymentStatus)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$OrderModelImpl &&
            (identical(other.customerName, customerName) ||
                other.customerName == customerName) &&
            (identical(other.customerImage, customerImage) ||
                other.customerImage == customerImage) &&
            (identical(other.productName, productName) ||
                other.productName == productName) &&
            (identical(other.productImage, productImage) ||
                other.productImage == productImage) &&
            (identical(other.userId, userId) || other.userId == userId) &&
            (identical(other.orderedPlaced, orderedPlaced) ||
                other.orderedPlaced == orderedPlaced) &&
            (identical(other.amount, amount) || other.amount == amount) &&
            (identical(other.paymentStatus, paymentStatus) ||
                other.paymentStatus == paymentStatus));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, customerName, customerImage,
      productName, productImage, userId, orderedPlaced, amount, paymentStatus);

  /// Create a copy of OrderModel
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$OrderModelImplCopyWith<_$OrderModelImpl> get copyWith =>
      __$$OrderModelImplCopyWithImpl<_$OrderModelImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$OrderModelImplToJson(
      this,
    );
  }
}

abstract class _OrderModel implements OrderModel {
  const factory _OrderModel(
      {required final String customerName,
      required final String customerImage,
      required final String productName,
      required final String productImage,
      required final String userId,
      required final String orderedPlaced,
      required final double amount,
      required final String paymentStatus}) = _$OrderModelImpl;

  factory _OrderModel.fromJson(Map<String, dynamic> json) =
      _$OrderModelImpl.fromJson;

  @override
  String get customerName;
  @override
  String get customerImage;
  @override
  String get productName;
  @override
  String get productImage;
  @override
  String get userId;
  @override
  String get orderedPlaced;
  @override
  double get amount;
  @override
  String get paymentStatus;

  /// Create a copy of OrderModel
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$OrderModelImplCopyWith<_$OrderModelImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
