import 'package:interview_app/home/domain/entities/new_arrival_response.dart';
import 'package:interview_app/home/domain/repositories/network_info_repository.dart';
import 'package:interview_app/home/domain/repositories/new_arrival_repositiry.dart';
import 'package:interview_app/home/domain/use_cases/base_use_case.dart';

class GetNewArrival
    implements BaseUseCase<List<List<NewArrivalResponse>>?, NoParams> {
  final INewArrivalRepository newArrivalRepository;
  final INetworkInfoRepository networkInfoRepository;
  GetNewArrival(this.newArrivalRepository, this.networkInfoRepository);
  @override
  Future<List<List<NewArrivalResponse>>?> call(NoParams parameter) async {
    if (await networkInfoRepository.isConnected()) {
      final response = await newArrivalRepository.getAllNewArrival();
      await newArrivalRepository.saveAllNewArrivalToDB(response);
    }
    return await newArrivalRepository.getAllNewArrivalFromDB();
  }
}
