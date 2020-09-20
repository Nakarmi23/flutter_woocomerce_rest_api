// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'woo_review.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

WooReview _$WooReviewFromJson(Map<String, dynamic> json) {
  return WooReview(
    id: json['id'] as int,
    dateCreated: json['date_created'] == null
        ? null
        : DateTime.parse(json['date_created'] as String),
    dateCreatedGMT: json['date_created_gmt'] == null
        ? null
        : DateTime.parse(json['date_created_gmt'] as String),
    productId: json['product_id'] as int,
    reviewer: json['reviewer'] as String,
    reviewerEmail: json['reviewer_email'] as String,
    review: json['review'] as String,
    rating: json['rating'] as int,
    verified: json['verified'] as bool,
    status: _$enumDecodeNullable(_$WooReviewStatusEnumMap, json['status']),
  );
}

Map<String, dynamic> _$WooReviewToJson(WooReview instance) => <String, dynamic>{
      'id': instance.id,
      'date_created': instance.dateCreated?.toIso8601String(),
      'date_created_gmt': instance.dateCreatedGMT?.toIso8601String(),
      'product_id': instance.productId,
      'status': _$WooReviewStatusEnumMap[instance.status],
      'reviewer': instance.reviewer,
      'reviewer_email': instance.reviewerEmail,
      'review': instance.review,
      'rating': instance.rating,
      'verified': instance.verified,
    };

T _$enumDecode<T>(
  Map<T, dynamic> enumValues,
  dynamic source, {
  T unknownValue,
}) {
  if (source == null) {
    throw ArgumentError('A value must be provided. Supported values: '
        '${enumValues.values.join(', ')}');
  }

  final value = enumValues.entries
      .singleWhere((e) => e.value == source, orElse: () => null)
      ?.key;

  if (value == null && unknownValue == null) {
    throw ArgumentError('`$source` is not one of the supported values: '
        '${enumValues.values.join(', ')}');
  }
  return value ?? unknownValue;
}

T _$enumDecodeNullable<T>(
  Map<T, dynamic> enumValues,
  dynamic source, {
  T unknownValue,
}) {
  if (source == null) {
    return null;
  }
  return _$enumDecode<T>(enumValues, source, unknownValue: unknownValue);
}

const _$WooReviewStatusEnumMap = {
  WooReviewStatus.approved: 'approved',
  WooReviewStatus.hold: 'hold',
  WooReviewStatus.spam: 'spam',
  WooReviewStatus.unspam: 'unspam',
  WooReviewStatus.trash: 'trash',
  WooReviewStatus.untrash: 'untrash',
};
