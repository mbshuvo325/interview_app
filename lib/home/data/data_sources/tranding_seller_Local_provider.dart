import 'package:get/get.dart';
import 'package:hive/hive.dart';
import 'package:interview_app/home/domain/entities/tranding_seller_response.dart';

abstract class ITrendingSellerLocalProvider {
  Future<List<List<TrendingSellerResponse>>?> getAllTrendingSeller();
  Future<void> saveAllTrendingSeller(
      List<List<TrendingSellerResponse>> newArrivals);
  Future<int> deleteAllTrendingSeller();
}

class TrendingSellerLocalProvider extends GetConnect
    implements ITrendingSellerLocalProvider {
  static const boxKey = "trendingSellerBox";
  static const sellerKey = "trendingSellerKey";

  @override
  Future<int> deleteAllTrendingSeller() async {
    final box = await Hive.openBox(boxKey);
    return box.clear();
  }

  @override
  Future<List<List<TrendingSellerResponse>>?> getAllTrendingSeller() async {
    final box = await Hive.openBox(boxKey);
    final resultStr = box.get(sellerKey);
    print("TendingSeller: $resultStr");
    if (resultStr != null) {
      return trendingSellerResponseFromJson(resultStr);
    } else {
      return null;
    }
  }

  @override
  Future<void> saveAllTrendingSeller(
      List<List<TrendingSellerResponse>> trendingSeller) async {
    final box = await Hive.openBox(boxKey);
    return await box.put(
        sellerKey, trendingSellerResponseToJson(trendingSeller));
  }
}
