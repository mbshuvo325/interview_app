import 'package:get/get.dart';
import 'package:interview_app/home/domain/entities/product_response.dart';
import 'package:interview_app/home/domain/entities/tranding_product_response.dart';

abstract class IProductProvider {
  Future<Response<List<List<ProductResponse>>>> getAllProduct();
}

class ProductProvider extends GetConnect implements IProductProvider {
  @override
  Future<Response<List<List<ProductResponse>>>> getAllProduct() {
    return get(
        "https://bd.ezassist.me/ws/mpFeed?instanceName=bd.ezassist.me&opt=stories",
        decoder: productResponseFromRawJson);
  }
}
