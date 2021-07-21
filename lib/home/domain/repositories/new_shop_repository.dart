import 'package:get/get_connect/http/src/response/response.dart';
import 'package:interview_app/home/domain/entities/new_shop_response.dart';
import 'package:interview_app/home/domain/entities/product_response.dart';

abstract class INewShopRepository {
  Future<List<List<NewShopResponse>>> getAllNewShop();
  Future<List<List<NewShopResponse>>?> getAllShopFromDB();
  Future<void> saveAllShopToDB(List<List<NewShopResponse>> allShop);
  Future<int> deleteAllShopFromDB();
}
