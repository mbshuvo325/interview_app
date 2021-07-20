import 'package:interview_app/home/data/data_sources/new_product_provider.dart';
import 'package:interview_app/home/domain/entities/product_response.dart';
import 'package:interview_app/home/domain/entities/tranding_product_response.dart';
import 'package:interview_app/home/domain/repositories/network_info_repository.dart';
import 'package:interview_app/home/domain/repositories/new_product_repository.dart';
import 'package:interview_app/home/domain/repositories/trending_product_repository.dart';
import 'package:interview_app/home/domain/use_cases/base_use_case.dart';

class GetProducts
    implements BaseUseCase<List<List<ProductResponse>>?, NoParams> {
  final IProductRepository productRepository;
  final INetworkInfoRepository networkInfoRepository;
  GetProducts(this.networkInfoRepository, this.productRepository);
  @override
  Future<List<List<ProductResponse>>?> call(NoParams parameter) async {
    if (await networkInfoRepository.isConnected()) {
      final response = await productRepository.getAllProduct();
      await productRepository.saveAllProductToDB(response);
    }
    return await productRepository.getAllProductFromDB();
  }
}
