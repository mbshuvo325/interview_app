import 'package:interview_app/home/domain/entities/new_arrival_response.dart';
import 'package:interview_app/home/domain/repositories/new_arrival_repositiry.dart';
import 'package:interview_app/home/domain/use_cases/base_use_case.dart';

class GetNewArrival
    implements BaseUseCase<List<List<NewArrivalResponse>>, NoParams> {
  final INewArrivalRepository newArrivalRepository;
  GetNewArrival(this.newArrivalRepository);
  @override
  Future<List<List<NewArrivalResponse>>> call(NoParams parameter) {
    return newArrivalRepository.getAllNewArrival();
  }
}
