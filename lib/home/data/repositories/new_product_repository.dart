import 'package:interview_app/_helper/response_decoder.dart';
import 'package:interview_app/home/data/data_sources/new_product_provider.dart';
import 'package:interview_app/home/data/data_sources/product_Local_provider.dart';
import 'package:interview_app/home/data/data_sources/tranding_product_Local_provider.dart';
import 'package:interview_app/home/data/data_sources/trending_product_provider.dart';
import 'package:interview_app/home/domain/entities/product_response.dart';
import 'package:interview_app/home/domain/entities/tranding_product_response.dart';
import 'package:interview_app/home/domain/repositories/new_product_repository.dart';
import 'package:interview_app/home/domain/repositories/trending_product_repository.dart';

class ProductRepository implements IProductRepository {
  final IProductProvider productProvider;
  final IProductLocalProvider productLocalProvider;
  ProductRepository(this.productProvider, this.productLocalProvider);

  @override
  Future<int> deleteAllProductFromDB() {
    return productLocalProvider.deleteAllProduct();
  }

  @override
  Future<List<List<ProductResponse>>> getAllProduct() async {
    final response = await productProvider.getAllProduct();
    return ResponseDecoder.decode(response);
  }

  @override
  Future<List<List<ProductResponse>>?> getAllProductFromDB() {
    return productLocalProvider.getAllProduct();
  }

  @override
  Future<void> saveAllProductToDB(List<List<ProductResponse>> allProduct) {
    return productLocalProvider.saveAllProduct(allProduct);
  }
}
