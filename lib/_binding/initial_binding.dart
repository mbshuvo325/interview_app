import 'package:get/get.dart';
import 'package:interview_app/home/data/data_sources/new_arraival_provider.dart';
import 'package:interview_app/home/data/data_sources/tranding_seller_provider.dart';
import 'package:interview_app/home/data/data_sources/trending_product_provider.dart';
import 'package:interview_app/home/data/repositories/new_arrival_repository.dart';
import 'package:interview_app/home/data/repositories/tranding_seller_repository.dart';
import 'package:interview_app/home/data/repositories/trending_product_repository.dart';
import 'package:interview_app/home/domain/repositories/new_arrival_repositiry.dart';
import 'package:interview_app/home/domain/repositories/tranding_seller_repositiry.dart';
import 'package:interview_app/home/domain/repositories/trending_product_repository.dart';
import 'package:interview_app/home/presentation/manager/home_page_controller.dart';

class AppBinding extends Bindings {
  static final find = Get.find;
  @override
  void dependencies() {
    Get.lazyPut<INewArrivalProvider>(() => NewArrivalProvider());
    Get.lazyPut<INewArrivalRepository>(() => NewArrivalRepository(find()));

    Get.lazyPut<ITrendingProductProvider>(() => TrendingProductProvider());
    Get.lazyPut<ITrendingProductRepository>(
        () => TrendingProductRepository(find()));

    Get.lazyPut<ITrendingSellerProvider>(() => TrandingSellerProvider());
    Get.lazyPut<ITrandingSellerRepository>(
        () => TrandingSellerRepository(find()));
    Get.lazyPut(() => HomePageController(find(), find(), find()));
  }
}
