// To parse this JSON data, do
//
//     final trendingSellerResponse = trendingSellerResponseFromJson(jsonString);

import 'dart:convert';

List<List<TrendingSellerResponse>> trendingSellerResponseFromJson(String str) =>
    List<List<TrendingSellerResponse>>.from(json.decode(str).map((x) =>
        List<TrendingSellerResponse>.from(
            x.map((x) => TrendingSellerResponse.fromJson(x)))));

List<List<TrendingSellerResponse>> trendingSellerResponseFromRawJson(
        dynamic json) =>
    List<List<TrendingSellerResponse>>.from((json as List<dynamic>).map((x) =>
        List<TrendingSellerResponse>.from(
            x.map((x) => TrendingSellerResponse.fromJson(x)))));

String trendingSellerResponseToJson(List<List<TrendingSellerResponse>> data) =>
    json.encode(List<dynamic>.from(
        data.map((x) => List<dynamic>.from(x.map((x) => x.toJson())))));

class TrendingSellerResponse {
  TrendingSellerResponse({
    this.slNo,
    this.sellerName,
    this.sellerProfilePhoto,
    this.sellerItemPhoto,
    this.ezShopName,
    this.defaultPushScore,
    this.aboutCompany,
    this.allowCod,
    this.division,
    this.subDivision,
    this.city,
    this.state,
    this.zipcode,
    this.country,
    this.currencyCode,
    this.orderQty,
    this.orderAmount,
    this.salesQty,
    this.salesAmount,
    this.highestDiscountPercent,
    this.lastAddToCart,
    this.lastAddToCartThatSold,
  });

  String? slNo;
  String? sellerName;
  String? sellerProfilePhoto;
  String? sellerItemPhoto;
  String? ezShopName;
  double? defaultPushScore;
  String? aboutCompany;
  int? allowCod;
  dynamic division;
  dynamic subDivision;
  String? city;
  String? state;
  String? zipcode;
  String? country;
  String? currencyCode;
  int? orderQty;
  int? orderAmount;
  int? salesQty;
  int? salesAmount;
  int? highestDiscountPercent;
  String? lastAddToCart;
  String? lastAddToCartThatSold;

  TrendingSellerResponse copyWith({
    String? slNo,
    String? sellerName,
    String? sellerProfilePhoto,
    String? sellerItemPhoto,
    String? ezShopName,
    double? defaultPushScore,
    String? aboutCompany,
    int? allowCod,
    dynamic division,
    dynamic subDivision,
    String? city,
    String? state,
    String? zipcode,
    String? country,
    String? currencyCode,
    int? orderQty,
    int? orderAmount,
    int? salesQty,
    int? salesAmount,
    int? highestDiscountPercent,
    String? lastAddToCart,
    String? lastAddToCartThatSold,
  }) =>
      TrendingSellerResponse(
        slNo: slNo ?? this.slNo,
        sellerName: sellerName ?? this.sellerName,
        sellerProfilePhoto: sellerProfilePhoto ?? this.sellerProfilePhoto,
        sellerItemPhoto: sellerItemPhoto ?? this.sellerItemPhoto,
        ezShopName: ezShopName ?? this.ezShopName,
        defaultPushScore: defaultPushScore ?? this.defaultPushScore,
        aboutCompany: aboutCompany ?? this.aboutCompany,
        allowCod: allowCod ?? this.allowCod,
        division: division ?? this.division,
        subDivision: subDivision ?? this.subDivision,
        city: city ?? this.city,
        state: state ?? this.state,
        zipcode: zipcode ?? this.zipcode,
        country: country ?? this.country,
        currencyCode: currencyCode ?? this.currencyCode,
        orderQty: orderQty ?? this.orderQty,
        orderAmount: orderAmount ?? this.orderAmount,
        salesQty: salesQty ?? this.salesQty,
        salesAmount: salesAmount ?? this.salesAmount,
        highestDiscountPercent:
            highestDiscountPercent ?? this.highestDiscountPercent,
        lastAddToCart: lastAddToCart ?? this.lastAddToCart,
        lastAddToCartThatSold:
            lastAddToCartThatSold ?? this.lastAddToCartThatSold,
      );

  factory TrendingSellerResponse.fromJson(Map<String, dynamic> json) =>
      TrendingSellerResponse(
        slNo: json["slNo"] == null ? null : json["slNo"],
        sellerName: json["sellerName"] == null ? null : json["sellerName"],
        sellerProfilePhoto: json["sellerProfilePhoto"] == null
            ? null
            : json["sellerProfilePhoto"],
        sellerItemPhoto:
            json["sellerItemPhoto"] == null ? null : json["sellerItemPhoto"],
        ezShopName: json["ezShopName"] == null ? null : json["ezShopName"],
        defaultPushScore: json["defaultPushScore"] == null
            ? null
            : json["defaultPushScore"].toDouble(),
        aboutCompany:
            json["aboutCompany"] == null ? null : json["aboutCompany"],
        allowCod: json["allowCOD"] == null ? null : json["allowCOD"],
        division: json["division"],
        subDivision: json["subDivision"],
        city: json["city"] == null ? null : json["city"],
        state: json["state"] == null ? null : json["state"],
        zipcode: json["zipcode"] == null ? null : json["zipcode"],
        country: json["country"] == null ? null : json["country"],
        currencyCode:
            json["currencyCode"] == null ? null : json["currencyCode"],
        orderQty: json["orderQty"] == null ? null : json["orderQty"],
        orderAmount: json["orderAmount"] == null ? null : json["orderAmount"],
        salesQty: json["salesQty"] == null ? null : json["salesQty"],
        salesAmount: json["salesAmount"] == null ? null : json["salesAmount"],
        highestDiscountPercent: json["highestDiscountPercent"] == null
            ? null
            : json["highestDiscountPercent"],
        lastAddToCart:
            json["lastAddToCart"] == null ? null : json["lastAddToCart"],
        lastAddToCartThatSold: json["lastAddToCartThatSold"] == null
            ? null
            : json["lastAddToCartThatSold"],
      );

  Map<String, dynamic> toJson() => {
        "slNo": slNo == null ? null : slNo,
        "sellerName": sellerName == null ? null : sellerName,
        "sellerProfilePhoto":
            sellerProfilePhoto == null ? null : sellerProfilePhoto,
        "sellerItemPhoto": sellerItemPhoto == null ? null : sellerItemPhoto,
        "ezShopName": ezShopName == null ? null : ezShopName,
        "defaultPushScore": defaultPushScore == null ? null : defaultPushScore,
        "aboutCompany": aboutCompany == null ? null : aboutCompany,
        "allowCOD": allowCod == null ? null : allowCod,
        "division": division,
        "subDivision": subDivision,
        "city": city == null ? null : city,
        "state": state == null ? null : state,
        "zipcode": zipcode == null ? null : zipcode,
        "country": country == null ? null : country,
        "currencyCode": currencyCode == null ? null : currencyCode,
        "orderQty": orderQty == null ? null : orderQty,
        "orderAmount": orderAmount == null ? null : orderAmount,
        "salesQty": salesQty == null ? null : salesQty,
        "salesAmount": salesAmount == null ? null : salesAmount,
        "highestDiscountPercent":
            highestDiscountPercent == null ? null : highestDiscountPercent,
        "lastAddToCart": lastAddToCart == null ? null : lastAddToCart,
        "lastAddToCartThatSold":
            lastAddToCartThatSold == null ? null : lastAddToCartThatSold,
      };
}
