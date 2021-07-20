import 'package:get/get.dart';
import 'package:interview_app/home/data/models/tranding_seller_response.dart';

abstract class ITrandingSellerProvider {
  Future<Response<TrendingSellerResponse>> getAllTrandingSeller();
}

class TrandingSellerProvider extends GetConnect
    implements ITrandingSellerProvider {
  @override
  Future<Response<TrendingSellerResponse>> getAllTrandingSeller() {
    return get(
        "https://bd.ezassist.me/ws/mpFeed?instanceName=bd.ezassist.me&opt=trending_seller",
        decoder: trendingSellerResponseFromRawJson);
  }
}
