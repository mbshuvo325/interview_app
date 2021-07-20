import 'package:get/get.dart';
import 'package:interview_app/home/data/data_sources/tranding_seller_provider.dart';
import 'package:interview_app/home/data/repositories/tranding_seller_repository.dart';
import 'package:interview_app/home/domain/repositories/tranding_seller_repositiry.dart';
import 'package:interview_app/home/presentation/manager/home_page_controller.dart';

class AppBinding extends Bindings {
  static final find = Get.find;
  @override
  void dependencies() {
    Get.lazyPut<ITrandingSellerProvider>(() => TrandingSellerProvider());
    Get.lazyPut<ITrandingSellerRepository>(
        () => TrandingSellerRepository(find()));
    Get.lazyPut(() => HomePageController(find()));
  }
}
