import 'package:get/get.dart';
import 'package:hive/hive.dart';
import 'package:interview_app/home/domain/entities/new_shop_response.dart';

abstract class INewShopLocalProvider {
  Future<List<List<NewShopResponse>>?> getAllShop();
  Future<void> saveAllShop(List<List<NewShopResponse>> allShop);
  Future<int> deleteAllShop();
}

class NewShopLocalProvider extends GetConnect implements INewShopLocalProvider {
  static const boxKey = "ShopBox";
  static const newShopKey = "ShopKey";

  @override
  Future<int> deleteAllShop() async {
    final box = await Hive.openBox(boxKey);
    return box.clear();
  }

  @override
  Future<List<List<NewShopResponse>>?> getAllShop() async {
    final box = await Hive.openBox(boxKey);
    final resultStr = box.get(newShopKey);
    print("Product: $resultStr");
    if (resultStr != null) {
      return newShopResponseFromJson(resultStr);
    } else {
      return null;
    }
  }

  @override
  Future<void> saveAllShop(List<List<NewShopResponse>> allShop) async {
    final box = await Hive.openBox(boxKey);
    return await box.put(newShopKey, newShopResponseToJson(allShop));
  }
}
