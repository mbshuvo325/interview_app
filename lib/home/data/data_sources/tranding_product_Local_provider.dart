import 'package:get/get.dart';
import 'package:hive/hive.dart';
import 'package:interview_app/home/domain/entities/tranding_product_response.dart';
import 'package:interview_app/home/domain/entities/tranding_seller_response.dart';

abstract class ITrendingProductLocalProvider {
  Future<List<List<TrendingProductResponse>>?> getAllTrendingProduct();
  Future<void> saveAllTrendingProduct(
      List<List<TrendingProductResponse>> newArrivals);
  Future<int> deleteAllTrendingProduct();
}

class TrendingProductLocalProvider extends GetConnect
    implements ITrendingProductLocalProvider {
  static const boxKey = "trendingProductBox";
  static const productKey = "trendingProductKey";

  @override
  Future<int> deleteAllTrendingProduct() async {
    final box = await Hive.openBox(boxKey);
    return box.clear();
  }

  @override
  Future<List<List<TrendingProductResponse>>?> getAllTrendingProduct() async {
    final box = await Hive.openBox(boxKey);
    final resultStr = box.get(productKey);
    print("TendingProduct: $resultStr");
    if (resultStr != null) {
      return trendingProductResponseFromJson(resultStr);
    } else {
      return null;
    }
  }

  @override
  Future<void> saveAllTrendingProduct(
      List<List<TrendingProductResponse>> trendingProduct) async {
    final box = await Hive.openBox(boxKey);
    return await box.put(
        productKey, trendingProductResponseToJson(trendingProduct));
  }
}
