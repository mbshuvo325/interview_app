import 'package:interview_app/home/domain/entities/tranding_product_response.dart';

abstract class ITrendingProductRepository {
  Future<List<List<TrendingProductResponse>>> getAllTrendingProduct();
  Future<List<List<TrendingProductResponse>>?> getAllTrendingProductFromDB();
  Future<void> saveAllTrendingProductToDB(
      List<List<TrendingProductResponse>> trendingProduct);
  Future<int> deleteAllTrendingProductFromDB();
}
