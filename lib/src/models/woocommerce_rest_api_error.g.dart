// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'woocommerce_rest_api_error.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

WooCommerceRestApiError _$WooCommerceRestApiErrorFromJson(
    Map<String, dynamic> json) {
  return WooCommerceRestApiError(
    code: json['code'] as String,
    message: json['message'] as String,
    status: json['status'] as int,
  );
}

Map<String, dynamic> _$WooCommerceRestApiErrorToJson(
        WooCommerceRestApiError instance) =>
    <String, dynamic>{
      'code': instance.code,
      'message': instance.message,
      'status': instance.status,
    };
