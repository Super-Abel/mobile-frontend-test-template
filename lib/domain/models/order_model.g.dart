// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'order_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$OrderModelImpl _$$OrderModelImplFromJson(Map<String, dynamic> json) =>
    _$OrderModelImpl(
      customerName: json['customerName'] as String,
      customerImage: json['customerImage'] as String,
      productName: json['productName'] as String,
      productImage: json['productImage'] as String,
      userId: json['userId'] as String,
      orderedPlaced: json['orderedPlaced'] as String,
      amount: (json['amount'] as num).toDouble(),
      paymentStatus: json['paymentStatus'] as String,
    );

Map<String, dynamic> _$$OrderModelImplToJson(_$OrderModelImpl instance) =>
    <String, dynamic>{
      'customerName': instance.customerName,
      'customerImage': instance.customerImage,
      'productName': instance.productName,
      'productImage': instance.productImage,
      'userId': instance.userId,
      'orderedPlaced': instance.orderedPlaced,
      'amount': instance.amount,
      'paymentStatus': instance.paymentStatus,
    };
