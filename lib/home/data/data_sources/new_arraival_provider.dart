import 'package:get/get.dart';
import 'package:interview_app/home/data/models/new_arrival_response.dart';
import 'package:interview_app/home/data/models/tranding_seller_response.dart';

abstract class INewArrivalProvider {
  Future<Response<NewArrivalResponse>> getAllNewArrival();
}

class NewArrivalProvider extends GetConnect implements INewArrivalProvider {
  @override
  Future<Response<NewArrivalResponse>> getAllNewArrival() {
    return get(
        "https://bd.ezassist.me/ws/mpFeed?instanceName=bd.ezassist.me&opt=newArrivals",
        decoder: newArrivalResponseFromRawJson);
  }
}
