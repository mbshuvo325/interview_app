import 'package:interview_app/home/domain/entities/tranding_seller_response.dart';
import 'package:interview_app/home/domain/repositories/tranding_seller_repositiry.dart';
import 'package:interview_app/home/domain/use_cases/base_use_case.dart';

class GetTrendingSeller
    implements BaseUseCase<List<List<TrendingSellerResponse>>, NoParams> {
  final ITrandingSellerRepository trendingSellerRepository;

  GetTrendingSeller(this.trendingSellerRepository);
  @override
  Future<List<List<TrendingSellerResponse>>> call(NoParams parameter) {
    return trendingSellerRepository.getAllTrandingSeller();
  }
}
