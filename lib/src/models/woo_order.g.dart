// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'woo_order.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

WooOrder _$WooOrderFromJson(Map<String, dynamic> json) {
  return WooOrder(
    id: json['id'] as int,
    parentId: json['parent_id'] as int,
    number: json['number'] as String,
    orderKey: json['order_key'] as String,
    createdVia: json['created_via'] as String,
    status: json['status'] as String,
    dateCreated: json['date_created'] == null
        ? null
        : DateTime.parse(json['date_created'] as String),
    dateCreatedGMT: json['date_created_gmt'] == null
        ? null
        : DateTime.parse(json['date_created_gmt'] as String),
    dateModified: json['date_modified'] == null
        ? null
        : DateTime.parse(json['date_modified'] as String),
    dateModifiedGMT: json['date_modified_gmt'] == null
        ? null
        : DateTime.parse(json['date_modified_gmt'] as String),
    discountTotal: json['discount_total'] as String,
    discountTax: json['discount_tax'] as String,
    shippingTax: json['shipping_tax'] as String,
    cartTax: json['cart_tax'] as String,
    total: json['total'] as String,
    totalTax: json['total_tax'] as String,
    pricesIncludeTax: json['prices_include_tax'] as bool,
    customerId: json['customer_id'] as int,
    customerIdAddress: json['customer_ip_address'] as String,
    customerUserAgent: json['customer_user_agent'] as String,
    customerNote: json['customer_note'] as String,
    paymentMethod: json['payment_method'] as String,
    paymentMethodTitle: json['payment_method_title'] as String,
    transactionId: json['transaction_id'] as String,
    datePaidGMT: json['date_paid_gmt'] == null
        ? null
        : DateTime.parse(json['date_paid_gmt'] as String),
    dateCompleted: json['date_completed'] == null
        ? null
        : DateTime.parse(json['date_completed'] as String),
    dateCompletedGMT: json['date_completed_gmt'] == null
        ? null
        : DateTime.parse(json['date_completed_gmt'] as String),
    cartHash: json['cart_hash'] as String,
    metaData: (json['meta_data'] as List)
        ?.map((e) => e == null
            ? null
            : WooOrderMetaData.fromJson(e as Map<String, dynamic>))
        ?.toList(),
    lineItems: (json['line_items'] as List)
        ?.map((e) => e == null
            ? null
            : WooOrderLineItem.fromJson(e as Map<String, dynamic>))
        ?.toList(),
    taxLines: (json['tax_lines'] as List)
        ?.map((e) => e == null
            ? null
            : WooOrderTaxLine.fromJson(e as Map<String, dynamic>))
        ?.toList(),
    shippingLines: (json['shipping_lines'] as List)
        ?.map((e) => e == null
            ? null
            : WooOrderShippingLine.fromJson(e as Map<String, dynamic>))
        ?.toList(),
    feeLines: (json['fee_lines'] as List)
        ?.map((e) => e == null
            ? null
            : WooOrderFeeLine.fromJson(e as Map<String, dynamic>))
        ?.toList(),
    couponLines: (json['coupon_lines'] as List)
        ?.map((e) => e == null
            ? null
            : WooOrderCouponLine.fromJson(e as Map<String, dynamic>))
        ?.toList(),
    refunds: (json['refunds'] as List)
        ?.map((e) => e == null
            ? null
            : WooOrderRefund.fromJson(e as Map<String, dynamic>))
        ?.toList(),
    setPaid: json['set_paid'] as bool,
    billing: json['billing'] == null
        ? null
        : WooOrderBilling.fromJson(json['billing'] as Map<String, dynamic>),
    shipping: json['shipping'] == null
        ? null
        : WooOrderShipping.fromJson(json['shipping'] as Map<String, dynamic>),
    shippingTotal: json['shipping_total'] as String,
  );
}

Map<String, dynamic> _$WooOrderToJson(WooOrder instance) {
  final val = <String, dynamic>{};

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull('id', instance.id);
  writeNotNull('parent_id', instance.parentId);
  writeNotNull('number', instance.number);
  writeNotNull('order_key', instance.orderKey);
  writeNotNull('created_via', instance.createdVia);
  writeNotNull('status', instance.status);
  writeNotNull('date_created', instance.dateCreated?.toIso8601String());
  writeNotNull('date_created_gmt', instance.dateCreatedGMT?.toIso8601String());
  writeNotNull('date_modified', instance.dateModified?.toIso8601String());
  writeNotNull(
      'date_modified_gmt', instance.dateModifiedGMT?.toIso8601String());
  writeNotNull('discount_total', instance.discountTotal);
  writeNotNull('discount_tax', instance.discountTax);
  writeNotNull('shipping_total', instance.shippingTotal);
  writeNotNull('shipping_tax', instance.shippingTax);
  writeNotNull('cart_tax', instance.cartTax);
  writeNotNull('total', instance.total);
  writeNotNull('total_tax', instance.totalTax);
  writeNotNull('prices_include_tax', instance.pricesIncludeTax);
  writeNotNull('customer_id', instance.customerId);
  writeNotNull('customer_ip_address', instance.customerIdAddress);
  writeNotNull('customer_user_agent', instance.customerUserAgent);
  writeNotNull('customer_note', instance.customerNote);
  writeNotNull('billing', instance.billing?.toJson());
  writeNotNull('shipping', instance.shipping?.toJson());
  writeNotNull('payment_method', instance.paymentMethod);
  writeNotNull('payment_method_title', instance.paymentMethodTitle);
  writeNotNull('transaction_id', instance.transactionId);
  writeNotNull('date_paid_gmt', instance.datePaidGMT?.toIso8601String());
  writeNotNull('date_completed', instance.dateCompleted?.toIso8601String());
  writeNotNull(
      'date_completed_gmt', instance.dateCompletedGMT?.toIso8601String());
  writeNotNull('cart_hash', instance.cartHash);
  writeNotNull(
      'meta_data', instance.metaData?.map((e) => e?.toJson())?.toList());
  writeNotNull(
      'line_items', instance.lineItems?.map((e) => e?.toJson())?.toList());
  writeNotNull(
      'tax_lines', instance.taxLines?.map((e) => e?.toJson())?.toList());
  writeNotNull('shipping_lines',
      instance.shippingLines?.map((e) => e?.toJson())?.toList());
  writeNotNull(
      'fee_lines', instance.feeLines?.map((e) => e?.toJson())?.toList());
  writeNotNull(
      'coupon_lines', instance.couponLines?.map((e) => e?.toJson())?.toList());
  writeNotNull('refunds', instance.refunds?.map((e) => e?.toJson())?.toList());
  writeNotNull('set_paid', instance.setPaid);
  return val;
}

WooOrderBilling _$WooOrderBillingFromJson(Map<String, dynamic> json) {
  return WooOrderBilling(
    firstName: json['first_name'] as String,
    lastName: json['last_name'] as String,
    company: json['company'] as String,
    address1: json['address_1'] as String,
    address2: json['address_2'] as String,
    city: json['city'] as String,
    state: json['state'] as String,
    postcode: json['postcode'] as String,
    country: json['country'] as String,
    email: json['email'] as String,
    phone: json['phone'] as String,
  );
}

Map<String, dynamic> _$WooOrderBillingToJson(WooOrderBilling instance) {
  final val = <String, dynamic>{};

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull('first_name', instance.firstName);
  writeNotNull('last_name', instance.lastName);
  writeNotNull('company', instance.company);
  writeNotNull('address_1', instance.address1);
  writeNotNull('address_2', instance.address2);
  writeNotNull('city', instance.city);
  writeNotNull('state', instance.state);
  writeNotNull('postcode', instance.postcode);
  writeNotNull('country', instance.country);
  writeNotNull('email', instance.email);
  writeNotNull('phone', instance.phone);
  return val;
}

WooOrderShipping _$WooOrderShippingFromJson(Map<String, dynamic> json) {
  return WooOrderShipping(
    firstName: json['first_name'] as String,
    lastName: json['last_name'] as String,
    company: json['company'] as String,
    address1: json['address_1'] as String,
    address2: json['address_2'] as String,
    city: json['city'] as String,
    state: json['state'] as String,
    postcode: json['postcode'] as String,
    country: json['country'] as String,
  );
}

Map<String, dynamic> _$WooOrderShippingToJson(WooOrderShipping instance) {
  final val = <String, dynamic>{};

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull('first_name', instance.firstName);
  writeNotNull('last_name', instance.lastName);
  writeNotNull('company', instance.company);
  writeNotNull('address_1', instance.address1);
  writeNotNull('address_2', instance.address2);
  writeNotNull('city', instance.city);
  writeNotNull('state', instance.state);
  writeNotNull('postcode', instance.postcode);
  writeNotNull('country', instance.country);
  return val;
}

WooOrderMetaData _$WooOrderMetaDataFromJson(Map<String, dynamic> json) {
  return WooOrderMetaData(
    id: json['id'] as int,
    key: json['key'] as String,
    value: json['value'],
  );
}

Map<String, dynamic> _$WooOrderMetaDataToJson(WooOrderMetaData instance) {
  final val = <String, dynamic>{};

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull('id', instance.id);
  writeNotNull('key', instance.key);
  writeNotNull('value', instance.value);
  return val;
}

WooOrderLineItem _$WooOrderLineItemFromJson(Map<String, dynamic> json) {
  return WooOrderLineItem(
    id: json['id'] as int,
    name: json['name'] as String,
    productId: json['product_id'] as int,
    variationId: json['variation_id'] as int,
    quantity: json['quantity'] as int,
    taxClass: json['tax_class'] as String,
    subtotal: json['subtotal'] as String,
    subtotalTax: json['subtotal_tax'] as String,
    total: json['total'] as String,
    totalTax: json['total_tax'] as String,
    taxes: (json['taxes'] as List)
        ?.map((e) =>
            e == null ? null : WooOrderTax.fromJson(e as Map<String, dynamic>))
        ?.toList(),
    metaData: (json['meta_data'] as List)
        ?.map((e) => e == null
            ? null
            : WooOrderMetaData.fromJson(e as Map<String, dynamic>))
        ?.toList(),
    sku: json['sku'] as String,
    price: json['price'] as int,
  );
}

Map<String, dynamic> _$WooOrderLineItemToJson(WooOrderLineItem instance) {
  final val = <String, dynamic>{};

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull('id', instance.id);
  writeNotNull('name', instance.name);
  writeNotNull('product_id', instance.productId);
  writeNotNull('variation_id', instance.variationId);
  writeNotNull('quantity', instance.quantity);
  writeNotNull('tax_class', instance.taxClass);
  writeNotNull('subtotal', instance.subtotal);
  writeNotNull('subtotal_tax', instance.subtotalTax);
  writeNotNull('total', instance.total);
  writeNotNull('total_tax', instance.totalTax);
  writeNotNull('taxes', instance.taxes?.map((e) => e?.toJson())?.toList());
  writeNotNull(
      'meta_data', instance.metaData?.map((e) => e?.toJson())?.toList());
  writeNotNull('sku', instance.sku);
  writeNotNull('price', instance.price);
  return val;
}

WooOrderTaxLine _$WooOrderTaxLineFromJson(Map<String, dynamic> json) {
  return WooOrderTaxLine(
    id: json['id'] as int,
    rateCode: json['rate_code'] as String,
    rateId: json['rate_id'] as String,
    label: json['label'] as String,
    compound: json['compound'] as bool,
    taxTotal: json['tax_total'] as String,
    shippingTaxTotal: json['shipping_tax_total'] as String,
    metaData: (json['meta_data\t'] as List)
        ?.map((e) => e == null
            ? null
            : WooOrderMetaData.fromJson(e as Map<String, dynamic>))
        ?.toList(),
  );
}

Map<String, dynamic> _$WooOrderTaxLineToJson(WooOrderTaxLine instance) {
  final val = <String, dynamic>{};

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull('id', instance.id);
  writeNotNull('rate_code', instance.rateCode);
  writeNotNull('rate_id', instance.rateId);
  writeNotNull('label', instance.label);
  writeNotNull('compound', instance.compound);
  writeNotNull('tax_total', instance.taxTotal);
  writeNotNull('shipping_tax_total', instance.shippingTaxTotal);
  writeNotNull(
      'meta_data\t', instance.metaData?.map((e) => e?.toJson())?.toList());
  return val;
}

WooOrderShippingLine _$WooOrderShippingLineFromJson(Map<String, dynamic> json) {
  return WooOrderShippingLine(
    id: json['id'] as int,
    methodTitle: json['method_title'] as String,
    methodId: json['method_id'] as String,
    total: json['total'] as String,
    taxTotal: json['total_tax'] as String,
    taxes: (json['taxes'] as List)
        ?.map((e) =>
            e == null ? null : WooOrderTax.fromJson(e as Map<String, dynamic>))
        ?.toList(),
    metaData: (json['meta_data'] as List)
        ?.map((e) => e == null
            ? null
            : WooOrderMetaData.fromJson(e as Map<String, dynamic>))
        ?.toList(),
  );
}

Map<String, dynamic> _$WooOrderShippingLineToJson(
    WooOrderShippingLine instance) {
  final val = <String, dynamic>{};

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull('id', instance.id);
  writeNotNull('method_title', instance.methodTitle);
  writeNotNull('method_id', instance.methodId);
  writeNotNull('total', instance.total);
  writeNotNull('total_tax', instance.taxTotal);
  writeNotNull('taxes', instance.taxes?.map((e) => e?.toJson())?.toList());
  writeNotNull(
      'meta_data', instance.metaData?.map((e) => e?.toJson())?.toList());
  return val;
}

WooOrderFeeLine _$WooOrderFeeLineFromJson(Map<String, dynamic> json) {
  return WooOrderFeeLine(
    id: json['id'] as int,
    name: json['name'] as String,
    taxClass: json['tax_class'] as String,
    taxStatus: json['tax_status'] as String,
    total: json['total'] as String,
    taxTotal: json['total_tax'] as String,
    taxes: (json['taxes'] as List)
        ?.map((e) =>
            e == null ? null : WooOrderTax.fromJson(e as Map<String, dynamic>))
        ?.toList(),
    metaData: (json['meta_data'] as List)
        ?.map((e) => e == null
            ? null
            : WooOrderMetaData.fromJson(e as Map<String, dynamic>))
        ?.toList(),
  );
}

Map<String, dynamic> _$WooOrderFeeLineToJson(WooOrderFeeLine instance) {
  final val = <String, dynamic>{};

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull('id', instance.id);
  writeNotNull('name', instance.name);
  writeNotNull('tax_class', instance.taxClass);
  writeNotNull('tax_status', instance.taxStatus);
  writeNotNull('total', instance.total);
  writeNotNull('total_tax', instance.taxTotal);
  writeNotNull('taxes', instance.taxes?.map((e) => e?.toJson())?.toList());
  writeNotNull(
      'meta_data', instance.metaData?.map((e) => e?.toJson())?.toList());
  return val;
}

WooOrderCouponLine _$WooOrderCouponLineFromJson(Map<String, dynamic> json) {
  return WooOrderCouponLine(
    id: json['id'] as int,
    code: json['code'] as String,
    discount: json['discount'] as String,
    discountTax: json['discount_tax'] as String,
    metaData: (json['meta_data'] as List)
        ?.map((e) => e == null
            ? null
            : WooOrderMetaData.fromJson(e as Map<String, dynamic>))
        ?.toList(),
  );
}

Map<String, dynamic> _$WooOrderCouponLineToJson(WooOrderCouponLine instance) {
  final val = <String, dynamic>{};

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull('id', instance.id);
  writeNotNull('code', instance.code);
  writeNotNull('discount', instance.discount);
  writeNotNull('discount_tax', instance.discountTax);
  writeNotNull(
      'meta_data', instance.metaData?.map((e) => e?.toJson())?.toList());
  return val;
}

WooOrderRefund _$WooOrderRefundFromJson(Map<String, dynamic> json) {
  return WooOrderRefund(
    id: json['id'] as int,
    reason: json['reason'] as String,
    total: json['total'] as String,
  );
}

Map<String, dynamic> _$WooOrderRefundToJson(WooOrderRefund instance) {
  final val = <String, dynamic>{};

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull('id', instance.id);
  writeNotNull('reason', instance.reason);
  writeNotNull('total', instance.total);
  return val;
}

WooOrderTax _$WooOrderTaxFromJson(Map<String, dynamic> json) {
  return WooOrderTax(
    id: json['id'] as int,
    rateCode: json['rate_code'] as String,
    rateId: json['rate_id'] as String,
    label: json['label'] as String,
    compound: json['compound'] as bool,
    taxTotal: json['tax_total'] as String,
    shippingTaxTotal: json['shipping_tax_total'] as String,
    metaData: (json['meta_data'] as List)
        ?.map((e) => e == null
            ? null
            : WooOrderMetaData.fromJson(e as Map<String, dynamic>))
        ?.toList(),
  );
}

Map<String, dynamic> _$WooOrderTaxToJson(WooOrderTax instance) {
  final val = <String, dynamic>{};

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull('id', instance.id);
  writeNotNull('rate_code', instance.rateCode);
  writeNotNull('rate_id', instance.rateId);
  writeNotNull('label', instance.label);
  writeNotNull('compound', instance.compound);
  writeNotNull('tax_total', instance.taxTotal);
  writeNotNull('shipping_tax_total', instance.shippingTaxTotal);
  writeNotNull(
      'meta_data', instance.metaData?.map((e) => e?.toJson())?.toList());
  return val;
}
