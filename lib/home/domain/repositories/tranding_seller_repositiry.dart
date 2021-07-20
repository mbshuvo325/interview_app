import 'package:interview_app/home/data/models/tranding_seller_response.dart';

abstract class ITrandingSellerRepository {
  Future<TrendingSellerResponse> getAllTrandingSeller();
}
