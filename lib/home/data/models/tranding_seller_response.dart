// To parse this JSON data, do
//
//     final trendingSellerResponse = trendingSellerResponseFromJson(jsonString);
import 'dart:convert';

TrendingSellerResponse trendingSellerResponseFromJson(String str) =>
    TrendingSellerResponse.fromJson(json.decode(str));

TrendingSellerResponse trendingSellerResponseFromRawJson(dynamic json) {
  print("JSON : $json");
  return TrendingSellerResponse.fromJson(json);
}

String trendingSellerResponseToJson(TrendingSellerResponse data) =>
    json.encode(data.toJson());

class TrendingSellerResponse {
  TrendingSellerResponse({
    required this.slNo,
    required this.sellerName,
    required this.sellerProfilePhoto,
    required this.sellerItemPhoto,
    required this.ezShopName,
    required this.defaultPushScore,
    required this.aboutCompany,
    required this.allowCod,
    required this.division,
    required this.subDivision,
    required this.city,
    required this.state,
    required this.zipcode,
    required this.country,
    required this.currencyCode,
    required this.orderQty,
    required this.orderAmount,
    required this.salesQty,
    required this.salesAmount,
    required this.highestDiscountPercent,
    required this.lastAddToCart,
    required this.lastAddToCartThatSold,
  });

  final String slNo;
  final String sellerName;
  final String sellerProfilePhoto;
  final String sellerItemPhoto;
  final String ezShopName;
  final double defaultPushScore;
  final dynamic aboutCompany;
  final int allowCod;
  final dynamic division;
  final dynamic subDivision;
  final String city;
  final String state;
  final String zipcode;
  final String country;
  final String currencyCode;
  final int orderQty;
  final int orderAmount;
  final int salesQty;
  final int salesAmount;
  final int highestDiscountPercent;
  final DateTime lastAddToCart;
  final DateTime lastAddToCartThatSold;

  TrendingSellerResponse copyWith({
    String? slNo,
    String? sellerName,
    String? sellerProfilePhoto,
    String? sellerItemPhoto,
    String? ezShopName,
    double? defaultPushScore,
    dynamic aboutCompany,
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
    DateTime? lastAddToCart,
    DateTime? lastAddToCartThatSold,
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
        aboutCompany: json["aboutCompany"],
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
            : json["lastAddToCart"],
      );

  Map<String, dynamic> toJson() => {
        "slNo": slNo == null ? null : slNo,
        "sellerName": sellerName == null ? null : sellerName,
        "sellerProfilePhoto":
            sellerProfilePhoto == null ? null : sellerProfilePhoto,
        "sellerItemPhoto": sellerItemPhoto == null ? null : sellerItemPhoto,
        "ezShopName": ezShopName == null ? null : ezShopName,
        "defaultPushScore": defaultPushScore == null ? null : defaultPushScore,
        "aboutCompany": aboutCompany,
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
        "lastAddToCart":
            lastAddToCart == null ? null : lastAddToCart.toIso8601String(),
        "lastAddToCartThatSold": lastAddToCartThatSold == null
            ? null
            : lastAddToCartThatSold.toIso8601String(),
      };
}
