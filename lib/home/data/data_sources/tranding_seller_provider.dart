import 'package:get/get.dart';
import 'package:interview_app/home/domain/entities/tranding_seller_response.dart';

abstract class ITrendingSellerProvider {
  Future<Response<List<List<TrendingSellerResponse>>>> getAllTrandingSeller();
}

class TrandingSellerProvider extends GetConnect
    implements ITrendingSellerProvider {
  @override
  Future<Response<List<List<TrendingSellerResponse>>>> getAllTrandingSeller() {
    return get(
        "https://bd.ezassist.me/ws/mpFeed?instanceName=bd.ezassist.me&opt=trending_seller",
        decoder: trendingSellerResponseFromRawJson);
  }
}
