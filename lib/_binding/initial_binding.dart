import 'package:connectivity_plus/connectivity_plus.dart';
import 'package:get/get.dart';
import 'package:interview_app/home/data/data_sources/new_arraival_provider.dart';
import 'package:interview_app/home/data/data_sources/new_arrival_local_provider.dart';
import 'package:interview_app/home/data/data_sources/new_product_provider.dart';
import 'package:interview_app/home/data/data_sources/newtork_info_provider.dart';
import 'package:interview_app/home/data/data_sources/product_Local_provider.dart';
import 'package:interview_app/home/data/data_sources/tranding_product_Local_provider.dart';
import 'package:interview_app/home/data/data_sources/tranding_seller_Local_provider.dart';
import 'package:interview_app/home/data/data_sources/tranding_seller_provider.dart';
import 'package:interview_app/home/data/data_sources/trending_product_provider.dart';
import 'package:interview_app/home/data/repositories/network_info_repository.dart';
import 'package:interview_app/home/data/repositories/new_arrival_repository.dart';
import 'package:interview_app/home/data/repositories/new_product_repository.dart';
import 'package:interview_app/home/data/repositories/tranding_seller_repository.dart';
import 'package:interview_app/home/data/repositories/trending_product_repository.dart';
import 'package:interview_app/home/domain/repositories/network_info_repository.dart';
import 'package:interview_app/home/domain/repositories/new_arrival_repositiry.dart';
import 'package:interview_app/home/domain/repositories/new_product_repository.dart';
import 'package:interview_app/home/domain/repositories/tranding_seller_repositiry.dart';
import 'package:interview_app/home/domain/repositories/trending_product_repository.dart';
import 'package:interview_app/home/domain/use_cases/get_new_arrival.dart';
import 'package:interview_app/home/domain/use_cases/get_products.dart';
import 'package:interview_app/home/domain/use_cases/get_trending_products.dart';
import 'package:interview_app/home/domain/use_cases/get_trending_seller.dart';
import 'package:interview_app/home/presentation/manager/home_page_controller.dart';

class AppBinding extends Bindings {
  static final find = Get.find;
  @override
  void dependencies() {
    Get.lazyPut(() => Connectivity());

    Get.lazyPut<INetworkInfoProvider>(() => NetworkInfoProvider(find()));
    Get.lazyPut<INetworkInfoRepository>(() => NetworkInfoRepository(find()));

    Get.lazyPut<IProductLocalProvider>(() => ProductLocalProvider());
    Get.lazyPut<IProductProvider>(() => ProductProvider());
    Get.lazyPut<IProductRepository>(() => ProductRepository(find(), find()));

    Get.lazyPut<INewArrivalLocalProvider>(() => NewArrivalLocalProvider());
    Get.lazyPut<INewArrivalProvider>(() => NewArrivalProvider());
    Get.lazyPut<INewArrivalRepository>(
        () => NewArrivalRepository(find(), find()));

    Get.lazyPut<ITrendingProductLocalProvider>(
        () => TrendingProductLocalProvider());
    Get.lazyPut<ITrendingProductProvider>(() => TrendingProductProvider());
    Get.lazyPut<ITrendingProductRepository>(
        () => TrendingProductRepository(find(), find()));

    Get.lazyPut<ITrendingSellerLocalProvider>(
        () => TrendingSellerLocalProvider());
    Get.lazyPut<ITrendingSellerProvider>(() => TrandingSellerProvider());
    Get.lazyPut<ITrandingSellerRepository>(
        () => TrandingSellerRepository(find(), find()));

    Get.lazyPut(() => GetProducts(find(), find()));
    Get.lazyPut(() => GetTrendingProducts(find(), find()));
    Get.lazyPut(() => GetTrendingSeller(find(), find()));
    Get.lazyPut(() => GetNewArrival(find(), find()));

    Get.lazyPut(() => HomePageController(find(), find(), find(), find()));
  }
}
