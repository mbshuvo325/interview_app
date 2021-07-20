import 'package:interview_app/_helper/response_decoder.dart';
import 'package:interview_app/home/data/data_sources/tranding_seller_Local_provider.dart';
import 'package:interview_app/home/data/data_sources/tranding_seller_provider.dart';
import 'package:interview_app/home/domain/entities/tranding_seller_response.dart';
import 'package:interview_app/home/domain/repositories/tranding_seller_repositiry.dart';

class TrandingSellerRepository implements ITrandingSellerRepository {
  final ITrendingSellerProvider _trandingSellerProvider;
  final ITrendingSellerLocalProvider trendingSellerLocalProvider;
  TrandingSellerRepository(
      this._trandingSellerProvider, this.trendingSellerLocalProvider);

  @override
  Future<List<List<TrendingSellerResponse>>> getAllTrandingSeller() async {
    final response = await _trandingSellerProvider.getAllTrandingSeller();
    return ResponseDecoder.decode(response);
  }

  @override
  Future<int> deleteAllTrendingSellerFROMDB() {
    return trendingSellerLocalProvider.deleteAllTrendingSeller();
  }

  @override
  Future<List<List<TrendingSellerResponse>>?> getAllTrendingSellerFROMDB() {
    return trendingSellerLocalProvider.getAllTrendingSeller();
  }

  @override
  Future<void> saveAllTrendingSellerFROMDB(
      List<List<TrendingSellerResponse>> trendingSeller) {
    return trendingSellerLocalProvider.saveAllTrendingSeller(trendingSeller);
  }
}
