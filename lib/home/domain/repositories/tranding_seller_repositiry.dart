import 'package:interview_app/home/domain/entities/tranding_seller_response.dart';

abstract class ITrandingSellerRepository {
  Future<List<List<TrendingSellerResponse>>> getAllTrandingSeller();
}
