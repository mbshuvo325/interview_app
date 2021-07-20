import 'package:get/get.dart';
import 'package:interview_app/home/domain/repositories/tranding_seller_repositiry.dart';

class HomePageController extends GetxController {
  final ITrandingSellerRepository trandingSellerRepository;
  HomePageController(this.trandingSellerRepository);

  @override
  void onInit() async {
    await getAllTrandingSeller();
    super.onInit();
  }

  getAllTrandingSeller() async {
    final response = await trandingSellerRepository.getAllTrandingSeller();
    print("RES : ${response.ezShopName}");
  }
}
