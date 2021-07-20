import 'package:interview_app/home/domain/entities/product_response.dart';

abstract class IProductRepository {
  Future<List<List<ProductResponse>>> getAllProduct();
  Future<List<List<ProductResponse>>?> getAllProductFromDB();
  Future<void> saveAllProductToDB(List<List<ProductResponse>> allProduct);
  Future<int> deleteAllProductFromDB();
}
