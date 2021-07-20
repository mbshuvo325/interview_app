import 'package:interview_app/_helper/response_decoder.dart';
import 'package:interview_app/home/data/data_sources/trending_product_provider.dart';
import 'package:interview_app/home/data/models/tranding_product_response.dart';
import 'package:interview_app/home/domain/repositories/trending_product_repository.dart';

class TrendingProductRepository implements ITrendingProductRepository {
  final ITrendingProductProvider _trendingProductProvider;

  TrendingProductRepository(this._trendingProductProvider);

  @override
  Future<TrendingProductResponse> getAllTrendingProduct() async {
    final response = await _trendingProductProvider.getAllTrendingProduct();
    return ResponseDecoder.decode(response);
  }
}
