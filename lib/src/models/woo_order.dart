import 'package:json_annotation/json_annotation.dart';

part 'woo_order.g.dart';

@JsonSerializable(explicitToJson: true, includeIfNull: false)
class WooOrder {
  int id;
  @JsonKey(name: 'parent_id')
  int parentId;
  String number;
  @JsonKey(name: 'order_key')
  String orderKey;
  @JsonKey(name: 'created_via')
  String createdVia;
  String status;
  @JsonKey(name: 'date_created')
  DateTime dateCreated;
  @JsonKey(name: 'date_created_gmt')
  DateTime dateCreatedGMT;
  @JsonKey(name: 'date_modified')
  DateTime dateModified;
  @JsonKey(name: 'date_modified_gmt')
  DateTime dateModifiedGMT;
  @JsonKey(name: 'discount_total')
  String discountTotal;
  @JsonKey(name: 'discount_tax')
  String discountTax;
  @JsonKey(name: 'shipping_tax')
  String shippingTax;
  @JsonKey(name: 'cart_tax')
  String cartTax;
  String total;
  @JsonKey(name: 'total_tax')
  String totalTax;
  @JsonKey(name: 'prices_include_tax')
  bool pricesIncludeTax;
  @JsonKey(name: 'customer_id')
  int customerId;
  @JsonKey(name: 'customer_ip_address')
  String customerIdAddress;
  @JsonKey(name: 'customer_user_agent')
  String customerUserAgent;
  @JsonKey(name: 'customer_note')
  String customerNote;
  WooOrderBilling billing;
  WooOrderShipping shipping;
  @JsonKey(name: 'payment_method')
  String paymentMethod;
  @JsonKey(name: 'payment_method_title')
  String paymentMethodTitle;
  @JsonKey(name: 'transaction_id')
  String transactionId;
  @JsonKey(name: 'date_paid_gmt')
  DateTime datePaidGMT;
  @JsonKey(name: 'date_completed')
  DateTime dateCompleted;
  @JsonKey(name: 'date_completed_gmt')
  DateTime dateCompletedGMT;
  @JsonKey(name: 'cart_hash')
  String cartHash;
  @JsonKey(name: 'meta_data')
  List<WooOrderMetaData> metaData;
  @JsonKey(name: 'line_items')
  List<WooOrderLineItem> lineItems;
  @JsonKey(name: 'tax_lines')
  List<WooOrderTaxLine> taxLines;
  @JsonKey(name: 'shipping_lines')
  List<WooOrderShippingLine> shippingLines;
  @JsonKey(name: 'fee_lines')
  List<WooOrderFeeLine> feeLines;
  @JsonKey(name: 'coupon_lines')
  List<WooOrderCouponLine> couponLines;
  List<WooOrderRefund> refunds;
  @JsonKey(name: 'set_paid')
  bool setPaid;
  WooOrder({
    this.id,
    this.parentId,
    this.number,
    this.orderKey,
    this.createdVia,
    this.status,
    this.dateCreated,
    this.dateCreatedGMT,
    this.dateModified,
    this.dateModifiedGMT,
    this.discountTotal,
    this.discountTax,
    this.shippingTax,
    this.cartTax,
    this.total,
    this.totalTax,
    this.pricesIncludeTax,
    this.customerId,
    this.customerIdAddress,
    this.customerUserAgent,
    this.customerNote,
    this.paymentMethod,
    this.paymentMethodTitle,
    this.transactionId,
    this.datePaidGMT,
    this.dateCompleted,
    this.dateCompletedGMT,
    this.cartHash,
    this.metaData,
    this.lineItems,
    this.taxLines,
    this.shippingLines,
    this.feeLines,
    this.couponLines,
    this.refunds,
    this.setPaid,
  });
  factory WooOrder.fromJson(Map<String, dynamic> json) =>
      _$WooOrderFromJson(json);

  Map<String, dynamic> toJson() => _$WooOrderToJson(this);
}

@JsonSerializable(includeIfNull: false)
class WooOrderBilling {
  @JsonKey(name: 'first_name')
  String firstName;
  @JsonKey(name: 'last_name')
  String lastName;
  String company;
  @JsonKey(name: 'address_1')
  String address1;
  @JsonKey(name: 'address_2')
  String address2;
  String city;
  String state;
  String postcode;
  String country;
  String email;
  String phone;

  WooOrderBilling({
    this.firstName,
    this.lastName,
    this.company,
    this.address1,
    this.address2,
    this.city,
    this.state,
    this.postcode,
    this.country,
    this.email,
    this.phone,
  });

  factory WooOrderBilling.fromJson(Map<String, dynamic> json) =>
      _$WooOrderBillingFromJson(json);

  Map<String, dynamic> toJson() => _$WooOrderBillingToJson(this);
}

@JsonSerializable(includeIfNull: false)
class WooOrderShipping {
  @JsonKey(name: 'first_name')
  String firstName;
  @JsonKey(name: 'last_name')
  String lastName;
  String company;
  @JsonKey(name: 'address_1')
  String address1;
  @JsonKey(name: 'address_2')
  String address2;
  String city;
  String state;
  String postcode;
  String country;

  WooOrderShipping({
    this.firstName,
    this.lastName,
    this.company,
    this.address1,
    this.address2,
    this.city,
    this.state,
    this.postcode,
    this.country,
  });

  factory WooOrderShipping.fromJson(Map<String, dynamic> json) =>
      _$WooOrderShippingFromJson(json);

  Map<String, dynamic> toJson() => _$WooOrderShippingToJson(this);
}

@JsonSerializable(includeIfNull: false)
class WooOrderMetaData {
  int id;
  String key;
  String value;
  WooOrderMetaData({
    this.id,
    this.key,
    this.value,
  });
  factory WooOrderMetaData.fromJson(Map<String, dynamic> json) =>
      _$WooOrderMetaDataFromJson(json);

  Map<String, dynamic> toJson() => _$WooOrderMetaDataToJson(this);
}

@JsonSerializable(explicitToJson: true, includeIfNull: false)
class WooOrderLineItem {
  int id;
  String name;
  @JsonKey(name: 'product_id')
  int productId;
  @JsonKey(name: 'variation_id')
  int variationId;
  int quantity;
  @JsonKey(name: 'tax_class')
  String taxClass;
  String subtotal;
  @JsonKey(name: 'subtotal_tax')
  String subtotalTax;
  String total;
  @JsonKey(name: 'total_tax')
  String totalTax;
  List<WooOrderTax> taxes;
  @JsonKey(name: 'meta_data')
  List<WooOrderMetaData> metaData;
  String sku;
  String price;
  WooOrderLineItem({
    this.id,
    this.name,
    this.productId,
    this.variationId,
    this.quantity,
    this.taxClass,
    this.subtotal,
    this.subtotalTax,
    this.total,
    this.totalTax,
    this.taxes,
    this.metaData,
    this.sku,
    this.price,
  });
  factory WooOrderLineItem.fromJson(Map<String, dynamic> json) =>
      _$WooOrderLineItemFromJson(json);

  Map<String, dynamic> toJson() => _$WooOrderLineItemToJson(this);
}

@JsonSerializable(explicitToJson: true, includeIfNull: false)
class WooOrderTaxLine {
  int id;
  @JsonKey(name: 'rate_code')
  String rateCode;
  @JsonKey(name: 'rate_id')
  String rateId;
  String label;
  bool compound;
  @JsonKey(name: 'tax_total')
  String taxTotal;
  @JsonKey(name: 'shipping_tax_total')
  String shippingTaxTotal;
  @JsonKey(name: 'meta_data	')
  List<WooOrderMetaData> metaData;
  WooOrderTaxLine({
    this.id,
    this.rateCode,
    this.rateId,
    this.label,
    this.compound,
    this.taxTotal,
    this.shippingTaxTotal,
    this.metaData,
  });

  factory WooOrderTaxLine.fromJson(Map<String, dynamic> json) =>
      _$WooOrderTaxLineFromJson(json);

  Map<String, dynamic> toJson() => _$WooOrderTaxLineToJson(this);
}

@JsonSerializable(explicitToJson: true, includeIfNull: false)
class WooOrderShippingLine {
  int id;
  @JsonKey(name: 'method_title')
  String methodTitle;
  @JsonKey(name: 'method_id')
  String methodId;
  String total;
  @JsonKey(name: 'total_tax')
  String taxTotal;
  List<WooOrderTax> taxes;
  @JsonKey(name: 'meta_data')
  List<WooOrderMetaData> metaData;
  WooOrderShippingLine({
    this.id,
    this.methodTitle,
    this.methodId,
    this.total,
    this.taxTotal,
    this.taxes,
    this.metaData,
  });
  factory WooOrderShippingLine.fromJson(Map<String, dynamic> json) =>
      _$WooOrderShippingLineFromJson(json);

  Map<String, dynamic> toJson() => _$WooOrderShippingLineToJson(this);
}

@JsonSerializable(explicitToJson: true, includeIfNull: false)
class WooOrderFeeLine {
  int id;
  String name;
  @JsonKey(name: 'tax_class')
  String taxClass;
  @JsonKey(name: 'tax_status')
  String taxStatus;
  String total;
  @JsonKey(name: 'total_tax')
  String taxTotal;
  @JsonKey(name: 'taxes')
  List<WooOrderTax> taxes;
  @JsonKey(name: 'meta_data')
  List<WooOrderMetaData> metaData;
  WooOrderFeeLine({
    this.id,
    this.name,
    this.taxClass,
    this.taxStatus,
    this.total,
    this.taxTotal,
    this.taxes,
    this.metaData,
  });
  factory WooOrderFeeLine.fromJson(Map<String, dynamic> json) =>
      _$WooOrderFeeLineFromJson(json);

  Map<String, dynamic> toJson() => _$WooOrderFeeLineToJson(this);
}

@JsonSerializable(explicitToJson: true, includeIfNull: false)
class WooOrderCouponLine {
  int id;
  String code;
  String discount;
  @JsonKey(name: 'discount_tax')
  String discountTax;
  @JsonKey(name: 'meta_data')
  List<WooOrderMetaData> metaData;
  WooOrderCouponLine({
    this.id,
    this.code,
    this.discount,
    this.discountTax,
    this.metaData,
  });
  factory WooOrderCouponLine.fromJson(Map<String, dynamic> json) =>
      _$WooOrderCouponLineFromJson(json);

  Map<String, dynamic> toJson() => _$WooOrderCouponLineToJson(this);
}

@JsonSerializable(includeIfNull: false)
class WooOrderRefund {
  int id;
  String reason;
  String total;
  WooOrderRefund({
    this.id,
    this.reason,
    this.total,
  });
  factory WooOrderRefund.fromJson(Map<String, dynamic> json) =>
      _$WooOrderRefundFromJson(json);

  Map<String, dynamic> toJson() => _$WooOrderRefundToJson(this);
}

@JsonSerializable(explicitToJson: true, includeIfNull: false)
class WooOrderTax {
  int id;
  @JsonKey(name: 'rate_code')
  String rateCode;
  @JsonKey(name: 'rate_id')
  String rateId;
  String label;
  bool compound;
  @JsonKey(name: 'tax_total')
  String taxTotal;
  @JsonKey(name: 'shipping_tax_total')
  String shippingTaxTotal;
  @JsonKey(name: 'meta_data')
  List<WooOrderMetaData> metaData;
  WooOrderTax({
    this.id,
    this.rateCode,
    this.rateId,
    this.label,
    this.compound,
    this.taxTotal,
    this.shippingTaxTotal,
    this.metaData,
  });
  factory WooOrderTax.fromJson(Map<String, dynamic> json) =>
      _$WooOrderTaxFromJson(json);

  Map<String, dynamic> toJson() => _$WooOrderTaxToJson(this);
}

enum WooOrderCurrency {
  AED,
  AFN,
  ALL,
  AMD,
  ANG,
  AOA,
  ARS,
  AUD,
  AWG,
  AZN,
  BAM,
  BBD,
  BDT,
  BGN,
  BHD,
  BIF,
  BMD,
  BND,
  BOB,
  BRL,
  BSD,
  BTC,
  BTN,
  BWP,
  BYR,
  BZD,
  CAD,
  CDF,
  CHF,
  CLP,
  CNY,
  COP,
  CRC,
  CUC,
  CUP,
  CVE,
  CZK,
  DJF,
  DKK,
  DOP,
  DZD,
  EGP,
  ERN,
  ETB,
  EUR,
  FJD,
  FKP,
  GBP,
  GEL,
  GGP,
  GHS,
  GIP,
  GMD,
  GNF,
  GTQ,
  GYD,
  HKD,
  HNL,
  HRK,
  HTG,
  HUF,
  IDR,
  ILS,
  IMP,
  INR,
  IQD,
  IRR,
  IRT,
  ISK,
  JEP,
  JMD,
  JOD,
  JPY,
  KES,
  KGS,
  KHR,
  KMF,
  KPW,
  KRW,
  KWD,
  KYD,
  KZT,
  LAK,
  LBP,
  LKR,
  LRD,
  LSL,
  LYD,
  MAD,
  MDL,
  MGA,
  MKD,
  MMK,
  MNT,
  MOP,
  MRO,
  MUR,
  MVR,
  MWK,
  MXN,
  MYR,
  MZN,
  NAD,
  NGN,
  NIO,
  NOK,
  NPR,
  NZD,
  OMR,
  PAB,
  PEN,
  PGK,
  PHP,
  PKR,
  PLN,
  PRB,
  PYG,
  QAR,
  RON,
  RSD,
  RUB,
  RWF,
  SAR,
  SBD,
  SCR,
  SDG,
  SEK,
  SGD,
  SHP,
  SLL,
  SOS,
  SRD,
  SSP,
  STD,
  SYP,
  SZL,
  THB,
  TJS,
  TMT,
  TND,
  TOP,
  TRY,
  TTD,
  TWD,
  TZS,
  UAH,
  UGX,
  USD,
  UYU,
  UZS,
  VEF,
  VND,
  VUV,
  WST,
  XAF,
  XCD,
  XOF,
  XPF,
  YER,
  ZAR,
  ZMW,
}
