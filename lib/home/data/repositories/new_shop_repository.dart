import 'package:interview_app/_helper/response_decoder.dart';
import 'package:interview_app/home/data/data_sources/new_shop_Local_provider.dart';
import 'package:interview_app/home/data/data_sources/new_shop_provider.dart';
import 'package:interview_app/home/domain/entities/new_shop_response.dart';
import 'package:interview_app/home/domain/repositories/new_shop_repository.dart';

class NewShopRepository implements INewShopRepository {
  final INewShopProvider shopProvider;
  final INewShopLocalProvider newShopLocalProvider;
  NewShopRepository(this.shopProvider, this.newShopLocalProvider);
  @override
  Future<int> deleteAllShopFromDB() {
    return newShopLocalProvider.deleteAllShop();
  }

  @override
  Future<List<List<NewShopResponse>>> getAllNewShop() async {
    final response = await shopProvider.getAllNewShop();
    return ResponseDecoder.decode(response);
  }

  @override
  Future<List<List<NewShopResponse>>?> getAllShopFromDB() {
    return newShopLocalProvider.getAllShop();
  }

  @override
  Future<void> saveAllShopToDB(List<List<NewShopResponse>> allShop) {
    return newShopLocalProvider.saveAllShop(allShop);
  }
}
