import 'package:interview_app/home/data/models/tranding_product_response.dart';

abstract class ITrendingProductRepository {
  Future<TrendingProductResponse> getAllTrendingProduct();
}
