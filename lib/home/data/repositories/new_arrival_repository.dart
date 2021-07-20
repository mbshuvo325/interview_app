import 'package:interview_app/_helper/response_decoder.dart';
import 'package:interview_app/home/data/data_sources/new_arraival_provider.dart';
import 'package:interview_app/home/data/data_sources/tranding_seller_provider.dart';
import 'package:interview_app/home/data/models/new_arrival_response.dart';
import 'package:interview_app/home/data/models/tranding_seller_response.dart';
import 'package:interview_app/home/domain/repositories/new_arrival_repositiry.dart';
import 'package:interview_app/home/domain/repositories/tranding_seller_repositiry.dart';

class NewArrivalRepository implements INewArrivalRepository {
  final INewArrivalProvider _newArrivalProvider;
  NewArrivalRepository(this._newArrivalProvider);

  @override
  Future<NewArrivalResponse> getAllNewArrival() async {
    final response = await _newArrivalProvider.getAllNewArrival();
    return ResponseDecoder.decode(response);
  }
}
