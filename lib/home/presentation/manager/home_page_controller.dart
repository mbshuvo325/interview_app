import 'package:get/get.dart';
import 'package:interview_app/home/domain/repositories/new_arrival_repositiry.dart';
import 'package:interview_app/home/domain/repositories/tranding_seller_repositiry.dart';
import 'package:interview_app/home/domain/repositories/trending_product_repository.dart';

class HomePageController extends GetxController {
  final ITrandingSellerRepository trandingSellerRepository;
  final ITrendingProductRepository trendingProductRepository;
  final INewArrivalRepository newArrivalRepository;
  HomePageController(this.trandingSellerRepository,
      this.trendingProductRepository, this.newArrivalRepository);

  @override
  void onInit() async {
    await getAllTrandingSeller();
    await getAllTrandingProduct();
    await getAllNewArrival()();
    super.onInit();
  }

  getAllTrandingSeller() async {
    final response = await trandingSellerRepository.getAllTrandingSeller();
    print("RES : ${response.ezShopName}");
  }

  getAllTrandingProduct() async {
    final response = await trendingProductRepository.getAllTrendingProduct();
    print("REP : ${response.ezShopName}");
  }

  getAllNewArrival() async {
    final response = await newArrivalRepository.getAllNewArrival();
    print("RENA : ${response.ezShopName}");
  }
}
