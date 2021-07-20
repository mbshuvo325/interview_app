import 'package:get/get.dart';
import 'package:interview_app/home/domain/entities/new_arrival_response.dart';

abstract class INewArrivalProvider {
  Future<Response<List<List<NewArrivalResponse>>>> getAllNewArrival();
}

class NewArrivalProvider extends GetConnect implements INewArrivalProvider {
  @override
  Future<Response<List<List<NewArrivalResponse>>>> getAllNewArrival() {
    return get(
        "https://bd.ezassist.me/ws/mpFeed?instanceName=bd.ezassist.me&opt=newArrivals",
        decoder: newArrivalResponseFromRawJson);
  }
}
