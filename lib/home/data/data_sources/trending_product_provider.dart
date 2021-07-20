import 'package:get/get.dart';
import 'package:interview_app/home/domain/entities/tranding_product_response.dart';

abstract class ITrendingProductProvider {
  Future<Response<List<List<TrendingProductResponse>>>> getAllTrendingProduct();
}

class TrendingProductProvider extends GetConnect
    implements ITrendingProductProvider {
  @override
  Future<Response<List<List<TrendingProductResponse>>>>
      getAllTrendingProduct() {
    return get(
        "https://bd.ezassist.me/ws/mpFeed?instanceName=bd.ezassist.me&opt=trendingProducts",
        decoder: trendingProductResponseFromRawJson);
  }
}
