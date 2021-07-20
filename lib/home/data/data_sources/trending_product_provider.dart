import 'package:get/get.dart';
import 'package:interview_app/home/data/models/tranding_product_response.dart';

abstract class ITrendingProductProvider {
  Future<Response<TrendingProductResponse>> getAllTrendingProduct();
}

class TrendingProductProvider extends GetConnect
    implements ITrendingProductProvider {
  @override
  Future<Response<TrendingProductResponse>> getAllTrendingProduct() {
    return get(
        " https://bd.ezassist.me/ws/mpFeed?instanceName=bd.ezassist.me&opt=trendingProducts",
        decoder: trendingProductResponseFromRawJson);
  }
}
