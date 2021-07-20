import 'package:interview_app/home/domain/entities/tranding_product_response.dart';
import 'package:interview_app/home/domain/repositories/network_info_repository.dart';
import 'package:interview_app/home/domain/repositories/trending_product_repository.dart';
import 'package:interview_app/home/domain/use_cases/base_use_case.dart';

class GetTrendingProducts
    implements BaseUseCase<List<List<TrendingProductResponse>>?, NoParams> {
  final ITrendingProductRepository trendingProductRepository;
  final INetworkInfoRepository networkInfoRepository;
  GetTrendingProducts(
      this.trendingProductRepository, this.networkInfoRepository);
  @override
  Future<List<List<TrendingProductResponse>>?> call(NoParams parameter) async {
    if (await networkInfoRepository.isConnected()) {
      final response = await trendingProductRepository.getAllTrendingProduct();
      await trendingProductRepository.saveAllTrendingProductToDB(response);
    }
    return await trendingProductRepository.getAllTrendingProductFromDB();
  }
}
