import 'package:interview_app/home/domain/entities/new_arrival_response.dart';

abstract class INewArrivalRepository {
  Future<List<List<NewArrivalResponse>>> getAllNewArrival();
  Future<List<List<NewArrivalResponse>>?> getAllNewArrivalFromDB();
  Future<void> saveAllNewArrivalToDB(List<List<NewArrivalResponse>> newArrivals);
  Future<int> deleteAllNewArrivalFromDB();
}
