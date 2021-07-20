// To parse this JSON data, do
//
//     final productResponse = productResponseFromJson(jsonString);

import 'package:meta/meta.dart';
import 'dart:convert';

ProductResponse productResponseFromJson(String str) =>
    ProductResponse.fromJson(json.decode(str));
ProductResponse productResponseFromRawJson(dynamic json) =>
    ProductResponse.fromJson(json);

String productResponseToJson(ProductResponse data) =>
    json.encode(data.toJson());

class ProductResponse {
  ProductResponse({
    required this.storyTime,
    required this.story,
    required this.storyType,
    required this.storyImage,
    required this.storyAdditionalImages,
    required this.promoImage,
    required this.orderQty,
    required this.lastAddToCart,
    required this.availableStock,
    required this.myId,
    required this.ezShopName,
    required this.companyName,
    required this.companyLogo,
    required this.companyEmail,
    required this.currencyCode,
    required this.unitPrice,
    required this.discountAmount,
    required this.discountPercent,
    required this.iMyId,
    required this.shopName,
    required this.shopLogo,
    required this.shopLink,
    required this.friendlyTimeDiff,
    required this.slNo,
  });

  final DateTime storyTime;
  final String story;
  final String storyType;
  final String storyImage;
  final String storyAdditionalImages;
  final String promoImage;
  final int orderQty;
  final DateTime lastAddToCart;
  final int availableStock;
  final String myId;
  final String ezShopName;
  final String companyName;
  final String companyLogo;
  final String companyEmail;
  final String currencyCode;
  final int unitPrice;
  final int discountAmount;
  final int discountPercent;
  final String iMyId;
  final String shopName;
  final String shopLogo;
  final String shopLink;
  final String friendlyTimeDiff;
  final String slNo;

  ProductResponse copyWith({
    DateTime? storyTime,
    String? story,
    String? storyType,
    String? storyImage,
    String? storyAdditionalImages,
    String? promoImage,
    int? orderQty,
    DateTime? lastAddToCart,
    int? availableStock,
    String? myId,
    String? ezShopName,
    String? companyName,
    String? companyLogo,
    String? companyEmail,
    String? currencyCode,
    int? unitPrice,
    int? discountAmount,
    int? discountPercent,
    String? iMyId,
    String? shopName,
    String? shopLogo,
    String? shopLink,
    String? friendlyTimeDiff,
    String? slNo,
  }) =>
      ProductResponse(
        storyTime: storyTime ?? this.storyTime,
        story: story ?? this.story,
        storyType: storyType ?? this.storyType,
        storyImage: storyImage ?? this.storyImage,
        storyAdditionalImages:
            storyAdditionalImages ?? this.storyAdditionalImages,
        promoImage: promoImage ?? this.promoImage,
        orderQty: orderQty ?? this.orderQty,
        lastAddToCart: lastAddToCart ?? this.lastAddToCart,
        availableStock: availableStock ?? this.availableStock,
        myId: myId ?? this.myId,
        ezShopName: ezShopName ?? this.ezShopName,
        companyName: companyName ?? this.companyName,
        companyLogo: companyLogo ?? this.companyLogo,
        companyEmail: companyEmail ?? this.companyEmail,
        currencyCode: currencyCode ?? this.currencyCode,
        unitPrice: unitPrice ?? this.unitPrice,
        discountAmount: discountAmount ?? this.discountAmount,
        discountPercent: discountPercent ?? this.discountPercent,
        iMyId: iMyId ?? this.iMyId,
        shopName: shopName ?? this.shopName,
        shopLogo: shopLogo ?? this.shopLogo,
        shopLink: shopLink ?? this.shopLink,
        friendlyTimeDiff: friendlyTimeDiff ?? this.friendlyTimeDiff,
        slNo: slNo ?? this.slNo,
      );

  factory ProductResponse.fromJson(Map<String, dynamic> json) =>
      ProductResponse(
        storyTime: json["storyTime"] == null ? null : json["storyTime"],
        story: json["story"] == null ? null : json["story"],
        storyType: json["storyType"] == null ? null : json["storyType"],
        storyImage: json["storyImage"] == null ? null : json["storyImage"],
        storyAdditionalImages: json["storyAdditionalImages"] == null
            ? null
            : json["storyAdditionalImages"],
        promoImage: json["promoImage"] == null ? null : json["promoImage"],
        orderQty: json["orderQty"] == null ? null : json["orderQty"],
        lastAddToCart:
            json["lastAddToCart"] == null ? null : json["lastAddToCart"],
        availableStock:
            json["availableStock"] == null ? null : json["availableStock"],
        myId: json["myId"] == null ? null : json["myId"],
        ezShopName: json["ezShopName"] == null ? null : json["ezShopName"],
        companyName: json["companyName"] == null ? null : json["companyName"],
        companyLogo: json["companyLogo"] == null ? null : json["companyLogo"],
        companyEmail:
            json["companyEmail"] == null ? null : json["companyEmail"],
        currencyCode:
            json["currencyCode"] == null ? null : json["currencyCode"],
        unitPrice: json["unitPrice"] == null ? null : json["unitPrice"],
        discountAmount:
            json["discountAmount"] == null ? null : json["discountAmount"],
        discountPercent:
            json["discountPercent"] == null ? null : json["discountPercent"],
        iMyId: json["iMyID"] == null ? null : json["iMyID"],
        shopName: json["shopName"] == null ? null : json["shopName"],
        shopLogo: json["shopLogo"] == null ? null : json["shopLogo"],
        shopLink: json["shopLink"] == null ? null : json["shopLink"],
        friendlyTimeDiff:
            json["friendlyTimeDiff"] == null ? null : json["friendlyTimeDiff"],
        slNo: json["slNo"] == null ? null : json["slNo"],
      );

  Map<String, dynamic> toJson() => {
        "storyTime": storyTime == null ? null : storyTime.toIso8601String(),
        "story": story == null ? null : story,
        "storyType": storyType == null ? null : storyType,
        "storyImage": storyImage == null ? null : storyImage,
        "storyAdditionalImages":
            storyAdditionalImages == null ? null : storyAdditionalImages,
        "promoImage": promoImage == null ? null : promoImage,
        "orderQty": orderQty == null ? null : orderQty,
        "lastAddToCart":
            lastAddToCart == null ? null : lastAddToCart.toIso8601String(),
        "availableStock": availableStock == null ? null : availableStock,
        "myId": myId == null ? null : myId,
        "ezShopName": ezShopName == null ? null : ezShopName,
        "companyName": companyName == null ? null : companyName,
        "companyLogo": companyLogo == null ? null : companyLogo,
        "companyEmail": companyEmail == null ? null : companyEmail,
        "currencyCode": currencyCode == null ? null : currencyCode,
        "unitPrice": unitPrice == null ? null : unitPrice,
        "discountAmount": discountAmount == null ? null : discountAmount,
        "discountPercent": discountPercent == null ? null : discountPercent,
        "iMyID": iMyId == null ? null : iMyId,
        "shopName": shopName == null ? null : shopName,
        "shopLogo": shopLogo == null ? null : shopLogo,
        "shopLink": shopLink == null ? null : shopLink,
        "friendlyTimeDiff": friendlyTimeDiff == null ? null : friendlyTimeDiff,
        "slNo": slNo == null ? null : slNo,
      };
}
