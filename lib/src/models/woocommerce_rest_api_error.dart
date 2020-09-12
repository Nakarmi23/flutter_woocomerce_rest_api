import 'package:json_annotation/json_annotation.dart';

part 'woocommerce_rest_api_error.g.dart';

@JsonSerializable(explicitToJson: true)
class WooCommerceRestApiError {
  String code;
  String message;
  int status;

  WooCommerceRestApiError({this.code, this.message, this.status});

  factory WooCommerceRestApiError.fromJson(Map<String, dynamic> json) =>
      _$WooCommerceRestApiErrorFromJson(json);

  Map<String, dynamic> toJson() => _$WooCommerceRestApiErrorToJson(this);

  @override
  String toString() =>
      'WooCommerceRestApiError(code: $code, message: $message, status: $status)';

  WooCommerceRestApiError copyWith({
    String code,
    String message,
    int status,
  }) {
    return WooCommerceRestApiError(
      code: code ?? this.code,
      message: message ?? this.message,
      status: status ?? this.status,
    );
  }
}
