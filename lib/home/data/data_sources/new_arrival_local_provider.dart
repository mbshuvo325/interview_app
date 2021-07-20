import 'dart:ffi';

import 'package:hive/hive.dart';
import 'package:interview_app/home/domain/entities/new_arrival_response.dart';

abstract class INewArrivalLocalProvider {
  Future<List<List<NewArrivalResponse>>?> getAllNewArrival();
  Future<void> saveAllNewArrival(List<List<NewArrivalResponse>> newArrivals);
  Future<int> deleteAllNewArrival();
}

class NewArrivalLocalProvider implements INewArrivalLocalProvider {
  static const boxKey = "newArrivalBox";
  static const arrivalKey = "newArrivalKey";

  @override
  Future<int> deleteAllNewArrival() async {
    final box = await Hive.openBox(boxKey);
    return box.clear();
  }

  @override
  Future<List<List<NewArrivalResponse>>?> getAllNewArrival() async {
    final box = await Hive.openBox(boxKey);
    final resultStr = box.get(arrivalKey);
    print("Result: $resultStr");
    if (resultStr != null) {
      return newArrivalResponseFromJson(resultStr);
    } else {
      return null;
    }
  }

  @override
  Future<void> saveAllNewArrival(
      List<List<NewArrivalResponse>> newArrivals) async {
    final box = await Hive.openBox(boxKey);
    return await box.put(arrivalKey, newArrivalResponseToJson(newArrivals));
  }
}
