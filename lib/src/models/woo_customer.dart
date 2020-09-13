import 'package:flutter/foundation.dart';
import 'package:json_annotation/json_annotation.dart';

part 'woo_customer.g.dart';

@JsonSerializable(includeIfNull: false, explicitToJson: true)
class WooCustomer {
  int id;
  @JsonKey(name: 'date_created')
  DateTime dateCreated;
  @JsonKey(name: 'date_created_gmt')
  DateTime dateCreatedGMT;
  @JsonKey(name: 'date_modified')
  DateTime dateModified;
  @JsonKey(name: 'date_modified_gmt')
  DateTime dateModifiedGMT;
  String email;
  @JsonKey(name: 'first_name')
  String firstName;
  @JsonKey(name: 'last_name')
  String lastName;
  String role;
  String username;
  String password;
  WooCustomerBilling billing;
  WooCustomerShipping shipping;
  @JsonKey(name: 'is_paying_customer')
  bool isPayingCustomer;
  @JsonKey(name: 'avatar_url')
  String avatarURL;
  @JsonKey(name: 'meta_data')
  List<WooCustomerMetaData> metaData;
  WooCustomer({
    this.id,
    this.dateCreated,
    this.dateCreatedGMT,
    this.dateModified,
    this.dateModifiedGMT,
    this.email,
    this.firstName,
    this.lastName,
    this.role,
    this.username,
    this.password,
    this.isPayingCustomer,
    this.avatarURL,
    this.metaData,
    this.billing,
    this.shipping,
  });

  factory WooCustomer.fromJson(Map<String, dynamic> json) =>
      _$WooCustomerFromJson(json);

  Map<String, dynamic> toJson() => _$WooCustomerToJson(this);

  WooCustomer copyWith({
    int id,
    DateTime dateCreated,
    DateTime dateCreatedGMT,
    DateTime dateModified,
    DateTime dateModifiedGMT,
    String email,
    String firstName,
    String lastName,
    String role,
    String username,
    String password,
    bool isPayingCustomer,
    String avatarURL,
    List<WooCustomerMetaData> metaData,
    WooCustomerBilling billing,
    WooCustomerShipping shipping,
  }) {
    return WooCustomer(
      id: id ?? this.id,
      dateCreated: dateCreated ?? this.dateCreated,
      dateCreatedGMT: dateCreatedGMT ?? this.dateCreatedGMT,
      dateModified: dateModified ?? this.dateModified,
      dateModifiedGMT: dateModifiedGMT ?? this.dateModifiedGMT,
      email: email ?? this.email,
      firstName: firstName ?? this.firstName,
      lastName: lastName ?? this.lastName,
      role: role ?? this.role,
      username: username ?? this.username,
      password: password ?? this.password,
      isPayingCustomer: isPayingCustomer ?? this.isPayingCustomer,
      avatarURL: avatarURL ?? this.avatarURL,
      metaData: metaData ?? this.metaData,
      billing: billing ?? this.billing,
      shipping: shipping ?? this.shipping,
    );
  }

  @override
  bool operator ==(Object o) {
    if (identical(this, o)) return true;

    return o is WooCustomer &&
        o.id == id &&
        o.dateCreated == dateCreated &&
        o.dateCreatedGMT == dateCreatedGMT &&
        o.dateModified == dateModified &&
        o.dateModifiedGMT == dateModifiedGMT &&
        o.email == email &&
        o.firstName == firstName &&
        o.lastName == lastName &&
        o.role == role &&
        o.username == username &&
        o.password == password &&
        o.isPayingCustomer == isPayingCustomer &&
        o.avatarURL == avatarURL &&
        listEquals(o.metaData, metaData);
  }

  @override
  int get hashCode {
    return id.hashCode ^
        dateCreated.hashCode ^
        dateCreatedGMT.hashCode ^
        dateModified.hashCode ^
        dateModifiedGMT.hashCode ^
        email.hashCode ^
        firstName.hashCode ^
        lastName.hashCode ^
        role.hashCode ^
        username.hashCode ^
        password.hashCode ^
        isPayingCustomer.hashCode ^
        avatarURL.hashCode ^
        metaData.hashCode;
  }
}

@JsonSerializable(includeIfNull: false)
class WooCustomerBilling {
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

  WooCustomerBilling({
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

  factory WooCustomerBilling.fromJson(Map<String, dynamic> json) =>
      _$WooCustomerBillingFromJson(json);

  Map<String, dynamic> toJson() => _$WooCustomerBillingToJson(this);

  WooCustomerBilling copyWith({
    String firstName,
    String lastName,
    String company,
    String address1,
    String address2,
    String city,
    String state,
    String postcode,
    String country,
    String email,
    String phone,
  }) {
    return WooCustomerBilling(
      firstName: firstName ?? this.firstName,
      lastName: lastName ?? this.lastName,
      company: company ?? this.company,
      address1: address1 ?? this.address1,
      address2: address2 ?? this.address2,
      city: city ?? this.city,
      state: state ?? this.state,
      postcode: postcode ?? this.postcode,
      country: country ?? this.country,
      email: email ?? this.email,
      phone: phone ?? this.phone,
    );
  }

  @override
  bool operator ==(Object o) {
    if (identical(this, o)) return true;

    return o is WooCustomerBilling &&
        o.firstName == firstName &&
        o.lastName == lastName &&
        o.company == company &&
        o.address1 == address1 &&
        o.address2 == address2 &&
        o.city == city &&
        o.state == state &&
        o.postcode == postcode &&
        o.country == country &&
        o.email == email &&
        o.phone == phone;
  }

  @override
  int get hashCode {
    return firstName.hashCode ^
        lastName.hashCode ^
        company.hashCode ^
        address1.hashCode ^
        address2.hashCode ^
        city.hashCode ^
        state.hashCode ^
        postcode.hashCode ^
        country.hashCode ^
        email.hashCode ^
        phone.hashCode;
  }
}

@JsonSerializable(includeIfNull: false)
class WooCustomerShipping {
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

  WooCustomerShipping({
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

  factory WooCustomerShipping.fromJson(Map<String, dynamic> json) =>
      _$WooCustomerShippingFromJson(json);

  Map<String, dynamic> toJson() => _$WooCustomerShippingToJson(this);

  WooCustomerShipping copyWith({
    String firstName,
    String lastName,
    String company,
    String address1,
    String address2,
    String city,
    String state,
    String postcode,
    String country,
  }) {
    return WooCustomerShipping(
      firstName: firstName ?? this.firstName,
      lastName: lastName ?? this.lastName,
      company: company ?? this.company,
      address1: address1 ?? this.address1,
      address2: address2 ?? this.address2,
      city: city ?? this.city,
      state: state ?? this.state,
      postcode: postcode ?? this.postcode,
      country: country ?? this.country,
    );
  }

  @override
  bool operator ==(Object o) {
    if (identical(this, o)) return true;

    return o is WooCustomerShipping &&
        o.firstName == firstName &&
        o.lastName == lastName &&
        o.company == company &&
        o.address1 == address1 &&
        o.address2 == address2 &&
        o.city == city &&
        o.state == state &&
        o.postcode == postcode &&
        o.country == country;
  }

  @override
  int get hashCode {
    return firstName.hashCode ^
        lastName.hashCode ^
        company.hashCode ^
        address1.hashCode ^
        address2.hashCode ^
        city.hashCode ^
        state.hashCode ^
        postcode.hashCode ^
        country.hashCode;
  }
}

@JsonSerializable(includeIfNull: false)
class WooCustomerMetaData {
  int id;
  String key;
  String value;

  WooCustomerMetaData({
    this.id,
    this.key,
    this.value,
  });

  Map<String, dynamic> toMap() {
    return {
      'id': id,
      'key': key,
      'value': value,
    };
  }

  factory WooCustomerMetaData.fromJson(Map<String, dynamic> json) =>
      _$WooCustomerMetaDataFromJson(json);

  Map<String, dynamic> toJson() => _$WooCustomerMetaDataToJson(this);

  WooCustomerMetaData copyWith({
    int id,
    String key,
    String value,
  }) {
    return WooCustomerMetaData(
      id: id ?? this.id,
      key: key ?? this.key,
      value: value ?? this.value,
    );
  }

  @override
  bool operator ==(Object o) {
    if (identical(this, o)) return true;

    return o is WooCustomerMetaData &&
        o.id == id &&
        o.key == key &&
        o.value == value;
  }

  @override
  int get hashCode => id.hashCode ^ key.hashCode ^ value.hashCode;
}
