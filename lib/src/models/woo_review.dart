import 'package:json_annotation/json_annotation.dart';

part 'woo_review.g.dart';

@JsonSerializable(explicitToJson: true)
class WooReview {
  int id;
  @JsonKey(name: 'date_created')
  DateTime dateCreated;
  @JsonKey(name: 'date_created_gmt')
  DateTime dateCreatedGMT;
  @JsonKey(name: 'product_id')
  int productId;
  WooReviewStatus status;
  String reviewer;
  @JsonKey(name: 'reviewer_email')
  String reviewerEmail;
  String review;
  int rating;
  bool verified;
  WooReview({
    this.id,
    this.dateCreated,
    this.dateCreatedGMT,
    this.productId,
    this.reviewer,
    this.reviewerEmail,
    this.review,
    this.rating,
    this.verified,
    this.status,
  });

  WooReview copyWith({
    int id,
    DateTime dateCreated,
    DateTime dateCreatedGMT,
    int productId,
    String reviewer,
    String reviewerEmail,
    String review,
    int rating,
    bool verified,
  }) {
    return WooReview(
      id: id ?? this.id,
      dateCreated: dateCreated ?? this.dateCreated,
      dateCreatedGMT: dateCreatedGMT ?? this.dateCreatedGMT,
      productId: productId ?? this.productId,
      reviewer: reviewer ?? this.reviewer,
      reviewerEmail: reviewerEmail ?? this.reviewerEmail,
      review: review ?? this.review,
      rating: rating ?? this.rating,
      verified: verified ?? this.verified,
    );
  }

  @override
  bool operator ==(Object o) {
    if (identical(this, o)) return true;

    return o is WooReview &&
        o.id == id &&
        o.dateCreated == dateCreated &&
        o.dateCreatedGMT == dateCreatedGMT &&
        o.productId == productId &&
        o.reviewer == reviewer &&
        o.reviewerEmail == reviewerEmail &&
        o.review == review &&
        o.rating == rating &&
        o.verified == verified;
  }

  @override
  int get hashCode {
    return id.hashCode ^
        dateCreated.hashCode ^
        dateCreatedGMT.hashCode ^
        productId.hashCode ^
        reviewer.hashCode ^
        reviewerEmail.hashCode ^
        review.hashCode ^
        rating.hashCode ^
        verified.hashCode;
  }

  factory WooReview.fromJson(Map<String, dynamic> json) =>
      _$WooReviewFromJson(json);

  Map<String, dynamic> toJson() => _$WooReviewToJson(this);
}

enum WooReviewStatus { approved, hold, spam, unspam, trash, untrash }
