import 'package:interview_app/_helper/response_decoder.dart';
import 'package:interview_app/home/data/data_sources/tranding_seller_provider.dart';
import 'package:interview_app/home/data/models/tranding_seller_response.dart';
import 'package:interview_app/home/domain/repositories/tranding_seller_repositiry.dart';

class TrandingSellerRepository implements ITrandingSellerRepository {
  final ITrandingSellerProvider _trandingSellerProvider;
  TrandingSellerRepository(this._trandingSellerProvider);

  @override
  Future<TrendingSellerResponse> getAllTrandingSeller() async {
    final response = await _trandingSellerProvider.getAllTrandingSeller();
    return ResponseDecoder.decode(response);
  }
}
