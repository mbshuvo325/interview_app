import 'package:get/get.dart';
import 'package:hive/hive.dart';
import 'package:interview_app/home/domain/entities/product_response.dart';
import 'package:interview_app/home/domain/entities/tranding_product_response.dart';
import 'package:interview_app/home/domain/entities/tranding_seller_response.dart';

abstract class IProductLocalProvider {
  Future<List<List<ProductResponse>>?> getAllProduct();
  Future<void> saveAllProduct(List<List<ProductResponse>> product);
  Future<int> deleteAllProduct();
}

class ProductLocalProvider extends GetConnect implements IProductLocalProvider {
  static const boxKey = "ProductBox";
  static const newProductKey = "ProductKey";

  @override
  Future<int> deleteAllProduct() async {
    final box = await Hive.openBox(boxKey);
    return box.clear();
  }

  @override
  Future<List<List<ProductResponse>>?> getAllProduct() async {
    final box = await Hive.openBox(boxKey);
    final resultStr = box.get(newProductKey);
    print("Product: $resultStr");
    if (resultStr != null) {
      return productResponseFromJson(resultStr);
    } else {
      return null;
    }
  }

  @override
  Future<void> saveAllProduct(List<List<ProductResponse>> newProduct) async {
    final box = await Hive.openBox(boxKey);
    return await box.put(newProductKey, productResponseToJson(newProduct));
  }
}
