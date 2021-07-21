import 'package:interview_app/home/domain/entities/new_shop_response.dart';
import 'package:interview_app/home/domain/repositories/network_info_repository.dart';
import 'package:interview_app/home/domain/repositories/new_shop_repository.dart';
import 'package:interview_app/home/domain/use_cases/base_use_case.dart';

class GetNewShop
    implements BaseUseCase<List<List<NewShopResponse>>?, NoParams> {
  final INewShopRepository newShopRepository;
  final INetworkInfoRepository networkInfoRepository;
  GetNewShop(this.newShopRepository, this.networkInfoRepository);

  @override
  Future<List<List<NewShopResponse>>?> call(NoParams parameter) async {
    if (await networkInfoRepository.isConnected()) {
      final response = await newShopRepository.getAllNewShop();
      await newShopRepository.saveAllShopToDB(response);
    }
    return await newShopRepository.getAllShopFromDB();
  }
}
