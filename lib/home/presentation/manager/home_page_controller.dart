import 'package:get/get.dart';
import 'package:interview_app/home/domain/entities/new_arrival_response.dart';
import 'package:interview_app/home/domain/entities/new_shop_response.dart';
import 'package:interview_app/home/domain/entities/product_response.dart';
import 'package:interview_app/home/domain/entities/tranding_product_response.dart';
import 'package:interview_app/home/domain/entities/tranding_seller_response.dart';
import 'package:interview_app/home/domain/use_cases/base_use_case.dart';
import 'package:interview_app/home/domain/use_cases/get_new_arrival.dart';
import 'package:interview_app/home/domain/use_cases/get_new_shop_use_case.dart';
import 'package:interview_app/home/domain/use_cases/get_products.dart';
import 'package:interview_app/home/domain/use_cases/get_trending_products.dart';
import 'package:interview_app/home/domain/use_cases/get_trending_seller.dart';

class HomePageController extends GetxController {
  final GetTrendingSeller getTrendingSeller;
  final GetNewArrival getNewArrival;
  final GetTrendingProducts getTrendingProducts;
  final GetProducts getProducts;
  final GetNewShop getNewShop;
  HomePageController(this.getTrendingSeller, this.getNewArrival,
      this.getTrendingProducts, this.getProducts, this.getNewShop);

  final newArrival = Rxn<List<List<NewArrivalResponse>>>();
  final trendingSeller = Rxn<List<List<TrendingSellerResponse>>>();
  final trendingProduct = Rxn<List<List<TrendingProductResponse>>>();
  final newProduct = Rxn<List<List<ProductResponse>>>();
  final newShop = Rxn<List<List<NewShopResponse>>>();

  @override
  void onInit() async {
    await getAllTrendingSeller();
    await getAllTrendingProduct();
    await getAllNewArrival();
    await getAllProduct();
    super.onInit();
  }

  getAllTrendingSeller() async {
    final response = await getTrendingSeller.call(NoParams());
    trendingSeller.value = response;
  }

  getAllTrendingProduct() async {
    final response = await getTrendingProducts.call(NoParams());
    trendingProduct.value = response;
  }

  getAllNewArrival() async {
    final response = await getNewArrival.call(NoParams());
    newArrival.value = response;
  }

  getAllProduct() async {
    final response = await getProducts.call(NoParams());
    newProduct.value = response;
  }
}
