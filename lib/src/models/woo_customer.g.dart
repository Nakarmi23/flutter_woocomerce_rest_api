// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'woo_customer.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

WooCustomer _$WooCustomerFromJson(Map<String, dynamic> json) {
  return WooCustomer(
    id: json['id'] as int,
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
    email: json['email'] as String,
    firstName: json['first_name'] as String,
    lastName: json['last_name'] as String,
    role: json['role'] as String,
    username: json['username'] as String,
    password: json['password'] as String,
    isPayingCustomer: json['is_paying_customer'] as bool,
    avatarURL: json['avatar_url'] as String,
    metaData: (json['meta_data'] as List)
        ?.map((e) => e == null
            ? null
            : WooCustomerMetaData.fromJson(e as Map<String, dynamic>))
        ?.toList(),
    billing: json['billing'] == null
        ? null
        : WooCustomerBilling.fromJson(json['billing'] as Map<String, dynamic>),
    shipping: json['shipping'] == null
        ? null
        : WooCustomerShipping.fromJson(
            json['shipping'] as Map<String, dynamic>),
  );
}

Map<String, dynamic> _$WooCustomerToJson(WooCustomer instance) {
  final val = <String, dynamic>{};

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull('id', instance.id);
  writeNotNull('date_created', instance.dateCreated?.toIso8601String());
  writeNotNull('date_created_gmt', instance.dateCreatedGMT?.toIso8601String());
  writeNotNull('date_modified', instance.dateModified?.toIso8601String());
  writeNotNull(
      'date_modified_gmt', instance.dateModifiedGMT?.toIso8601String());
  writeNotNull('email', instance.email);
  writeNotNull('first_name', instance.firstName);
  writeNotNull('last_name', instance.lastName);
  writeNotNull('role', instance.role);
  writeNotNull('username', instance.username);
  writeNotNull('password', instance.password);
  writeNotNull('billing', instance.billing?.toJson());
  writeNotNull('shipping', instance.shipping?.toJson());
  writeNotNull('is_paying_customer', instance.isPayingCustomer);
  writeNotNull('avatar_url', instance.avatarURL);
  writeNotNull(
      'meta_data', instance.metaData?.map((e) => e?.toJson())?.toList());
  return val;
}

WooCustomerBilling _$WooCustomerBillingFromJson(Map<String, dynamic> json) {
  return WooCustomerBilling(
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

Map<String, dynamic> _$WooCustomerBillingToJson(WooCustomerBilling instance) {
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

WooCustomerShipping _$WooCustomerShippingFromJson(Map<String, dynamic> json) {
  return WooCustomerShipping(
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

Map<String, dynamic> _$WooCustomerShippingToJson(WooCustomerShipping instance) {
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

WooCustomerMetaData _$WooCustomerMetaDataFromJson(Map<String, dynamic> json) {
  return WooCustomerMetaData(
    id: json['id'] as int,
    key: json['key'] as String,
    value: json['value'] as String,
  );
}

Map<String, dynamic> _$WooCustomerMetaDataToJson(WooCustomerMetaData instance) {
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
