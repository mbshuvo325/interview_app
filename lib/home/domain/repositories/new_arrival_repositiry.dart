import 'package:interview_app/home/data/models/new_arrival_response.dart';

abstract class INewArrivalRepository {
  Future<NewArrivalResponse> getAllNewArrival();
}
