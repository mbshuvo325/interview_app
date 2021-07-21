import 'package:get/get.dart';
import 'package:interview_app/home/domain/entities/new_shop_response.dart';

abstract class INewShopProvider {
  Future<Response<List<List<NewShopResponse>>>> getAllNewShop();
}

class NewShopProviderProvider extends GetConnect implements INewShopProvider {
  @override
  Future<Response<List<List<NewShopResponse>>>> getAllNewShop() {
    return get(
        "https://bd.ezassist.me/ws/mpFeed?instanceName=bd.ezassist.me&opt=newShops",
        decoder: newShopResponseFromRawJson);
  }
}
