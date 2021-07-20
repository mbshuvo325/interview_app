import 'package:get/get.dart';
import 'package:interview_app/home/domain/use_cases/base_use_case.dart';
import 'package:interview_app/home/domain/use_cases/get_new_arrival.dart';
import 'package:interview_app/home/domain/use_cases/get_trending_products.dart';
import 'package:interview_app/home/domain/use_cases/get_trending_seller.dart';

class HomePageController extends GetxController {
  final GetTrendingSeller getTrendingSeller;
  final GetNewArrival getNewArrival;
  final GetTrendingProducts getTrendingProducts;
  HomePageController(
      this.getTrendingSeller, this.getNewArrival, this.getTrendingProducts);
  @override
  void onInit() async {
    await getAllTrendingSeller();
    await getAllTrendingProduct();
    await getAllNewArrival();
    super.onInit();
  }

  getAllTrendingSeller() async {
    final response = await getTrendingSeller(NoParams());
    print("RES : ${response.length}");
  }

  getAllTrendingProduct() async {
    final response = await getNewArrival(NoParams());
    print("REP : ${response.length}");
  }

  getAllNewArrival() async {
    final response = await getTrendingProducts(NoParams());
    print("RENA : ${response.length}");
  }
}
