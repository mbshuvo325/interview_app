import 'package:interview_app/home/domain/entities/new_arrival_response.dart';

abstract class INewArrivalLocalProvider {
  Future<List<List<NewArrivalResponse>>> getAllNewArrival();
}
