import 'package:interview_app/_helper/response_decoder.dart';
import 'package:interview_app/home/data/data_sources/new_arraival_provider.dart';
import 'package:interview_app/home/data/data_sources/new_arrival_local_provider.dart';
import 'package:interview_app/home/domain/entities/new_arrival_response.dart';
import 'package:interview_app/home/domain/repositories/new_arrival_repositiry.dart';

class NewArrivalRepository implements INewArrivalRepository {
  final INewArrivalProvider _newArrivalProvider;
  final INewArrivalLocalProvider _arrivalLocalProvider;
  NewArrivalRepository(this._newArrivalProvider, this._arrivalLocalProvider);

  @override
  Future<List<List<NewArrivalResponse>>> getAllNewArrival() async {
    final response = await _newArrivalProvider.getAllNewArrival();
    return ResponseDecoder.decode(response);
  }

  @override
  Future<int> deleteAllNewArrivalFromDB() {
   return _arrivalLocalProvider.deleteAllNewArrival();
  }

  @override
  Future<List<List<NewArrivalResponse>>?> getAllNewArrivalFromDB() {
   return _arrivalLocalProvider.getAllNewArrival();
  }

  @override
  Future<void> saveAllNewArrivalToDB(List<List<NewArrivalResponse>> newArrivals) {
   return _arrivalLocalProvider.saveAllNewArrival(newArrivals);
  }
}
