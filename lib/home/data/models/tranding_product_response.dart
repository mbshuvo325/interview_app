// To parse this JSON data, do
//
//     final trendingProductResponse = trendingProductResponseFromJson(jsonString);

import 'dart:convert';

TrendingProductResponse trendingProductResponseFromJson(String str) =>
    TrendingProductResponse.fromJson(json.decode(str));
TrendingProductResponse trendingProductResponseFromRawJson(dynamic json) =>
    TrendingProductResponse.fromJson(json);

String trendingProductResponseToJson(TrendingProductResponse data) =>
    json.encode(data.toJson());

class TrendingProductResponse {
  TrendingProductResponse({
    required this.slNo,
    required this.productName,
    required this.shortDetails,
    required this.productDescription,
    required this.availableStock,
    required this.orderQty,
    required this.salesQty,
    required this.orderAmount,
    required this.salesAmount,
    required this.discountPercent,
    required this.discountAmount,
    required this.unitPrice,
    required this.productImage,
    required this.sellerName,
    required this.sellerProfilePhoto,
    required this.sellerCoverPhoto,
    required this.ezShopName,
    required this.defaultPushScore,
    required this.myProductVarId,
  });

  final String slNo;
  final String productName;
  final String shortDetails;
  final String productDescription;
  final int availableStock;
  final int orderQty;
  final int salesQty;
  final int orderAmount;
  final int salesAmount;
  final int discountPercent;
  final int discountAmount;
  final int unitPrice;
  final String productImage;
  final String sellerName;
  final String sellerProfilePhoto;
  final String sellerCoverPhoto;
  final String ezShopName;
  final int defaultPushScore;
  final String myProductVarId;

  TrendingProductResponse copyWith({
    String? slNo,
    String? productName,
    String? shortDetails,
    String? productDescription,
    int? availableStock,
    int? orderQty,
    int? salesQty,
    int? orderAmount,
    int? salesAmount,
    int? discountPercent,
    int? discountAmount,
    int? unitPrice,
    String? productImage,
    String? sellerName,
    String? sellerProfilePhoto,
    String? sellerCoverPhoto,
    String? ezShopName,
    int? defaultPushScore,
    String? myProductVarId,
  }) =>
      TrendingProductResponse(
        slNo: slNo ?? this.slNo,
        productName: productName ?? this.productName,
        shortDetails: shortDetails ?? this.shortDetails,
        productDescription: productDescription ?? this.productDescription,
        availableStock: availableStock ?? this.availableStock,
        orderQty: orderQty ?? this.orderQty,
        salesQty: salesQty ?? this.salesQty,
        orderAmount: orderAmount ?? this.orderAmount,
        salesAmount: salesAmount ?? this.salesAmount,
        discountPercent: discountPercent ?? this.discountPercent,
        discountAmount: discountAmount ?? this.discountAmount,
        unitPrice: unitPrice ?? this.unitPrice,
        productImage: productImage ?? this.productImage,
        sellerName: sellerName ?? this.sellerName,
        sellerProfilePhoto: sellerProfilePhoto ?? this.sellerProfilePhoto,
        sellerCoverPhoto: sellerCoverPhoto ?? this.sellerCoverPhoto,
        ezShopName: ezShopName ?? this.ezShopName,
        defaultPushScore: defaultPushScore ?? this.defaultPushScore,
        myProductVarId: myProductVarId ?? this.myProductVarId,
      );

  factory TrendingProductResponse.fromJson(Map<String, dynamic> json) =>
      TrendingProductResponse(
        slNo: json["slNo"] == null ? null : json["slNo"],
        productName: json["productName"] == null ? null : json["productName"],
        shortDetails:
            json["shortDetails"] == null ? null : json["shortDetails"],
        productDescription: json["productDescription"] == null
            ? null
            : json["productDescription"],
        availableStock:
            json["availableStock"] == null ? null : json["availableStock"],
        orderQty: json["orderQty"] == null ? null : json["orderQty"],
        salesQty: json["salesQty"] == null ? null : json["salesQty"],
        orderAmount: json["orderAmount"] == null ? null : json["orderAmount"],
        salesAmount: json["salesAmount"] == null ? null : json["salesAmount"],
        discountPercent:
            json["discountPercent"] == null ? null : json["discountPercent"],
        discountAmount:
            json["discountAmount"] == null ? null : json["discountAmount"],
        unitPrice: json["unitPrice"] == null ? null : json["unitPrice"],
        productImage:
            json["productImage"] == null ? null : json["productImage"],
        sellerName: json["sellerName"] == null ? null : json["sellerName"],
        sellerProfilePhoto: json["sellerProfilePhoto"] == null
            ? null
            : json["sellerProfilePhoto"],
        sellerCoverPhoto:
            json["sellerCoverPhoto"] == null ? null : json["sellerCoverPhoto"],
        ezShopName: json["ezShopName"] == null ? null : json["ezShopName"],
        defaultPushScore:
            json["defaultPushScore"] == null ? null : json["defaultPushScore"],
        myProductVarId:
            json["myProductVarId"] == null ? null : json["myProductVarId"],
      );

  Map<String, dynamic> toJson() => {
        "slNo": slNo == null ? null : slNo,
        "productName": productName == null ? null : productName,
        "shortDetails": shortDetails == null ? null : shortDetails,
        "productDescription":
            productDescription == null ? null : productDescription,
        "availableStock": availableStock == null ? null : availableStock,
        "orderQty": orderQty == null ? null : orderQty,
        "salesQty": salesQty == null ? null : salesQty,
        "orderAmount": orderAmount == null ? null : orderAmount,
        "salesAmount": salesAmount == null ? null : salesAmount,
        "discountPercent": discountPercent == null ? null : discountPercent,
        "discountAmount": discountAmount == null ? null : discountAmount,
        "unitPrice": unitPrice == null ? null : unitPrice,
        "productImage": productImage == null ? null : productImage,
        "sellerName": sellerName == null ? null : sellerName,
        "sellerProfilePhoto":
            sellerProfilePhoto == null ? null : sellerProfilePhoto,
        "sellerCoverPhoto": sellerCoverPhoto == null ? null : sellerCoverPhoto,
        "ezShopName": ezShopName == null ? null : ezShopName,
        "defaultPushScore": defaultPushScore == null ? null : defaultPushScore,
        "myProductVarId": myProductVarId == null ? null : myProductVarId,
      };
}
