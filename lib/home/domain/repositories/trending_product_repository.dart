import 'package:interview_app/home/domain/entities/tranding_product_response.dart';

abstract class ITrendingProductRepository {
  Future<List<List<TrendingProductResponse>>> getAllTrendingProduct();
}
