import 'package:interview_app/home/domain/entities/tranding_seller_response.dart';
import 'package:interview_app/home/domain/repositories/network_info_repository.dart';
import 'package:interview_app/home/domain/repositories/tranding_seller_repositiry.dart';
import 'package:interview_app/home/domain/use_cases/base_use_case.dart';

class GetTrendingSeller
    implements BaseUseCase<List<List<TrendingSellerResponse>>?, NoParams> {
  final ITrandingSellerRepository trendingSellerRepository;
  final INetworkInfoRepository networkInfoRepository;

  GetTrendingSeller(this.trendingSellerRepository, this.networkInfoRepository);
  @override
  Future<List<List<TrendingSellerResponse>>?> call(NoParams parameter) async {
    if (await networkInfoRepository.isConnected()) {
      final response = await trendingSellerRepository.getAllTrandingSeller();
      await trendingSellerRepository.saveAllTrendingSellerFROMDB(response);
    }
    return await trendingSellerRepository.getAllTrendingSellerFROMDB();
  }
}
