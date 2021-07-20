import 'package:interview_app/home/domain/entities/tranding_seller_response.dart';

abstract class ITrandingSellerRepository {
  Future<List<List<TrendingSellerResponse>>> getAllTrandingSeller();
  Future<List<List<TrendingSellerResponse>>?> getAllTrendingSellerFROMDB();
  Future<void> saveAllTrendingSellerFROMDB(
      List<List<TrendingSellerResponse>> trendingSeller);
  Future<int> deleteAllTrendingSellerFROMDB();
}
