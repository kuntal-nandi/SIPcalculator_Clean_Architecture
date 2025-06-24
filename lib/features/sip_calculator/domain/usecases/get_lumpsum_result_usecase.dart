import 'package:sip_calculator_clean_architecture/features/sip_calculator/data/models/lumpsum_data.dart';

import '../../../../core/resources/data_state.dart';
import '../../../../core/usecase/usecase.dart';
import '../entities/calculated_result_entity.dart';
import '../repository/sip_calculator_repository.dart';

class GetLumpsumResultUsecase
    implements Usecase<DataState<CalculatedResultEntity>, LumpsumData> {
  final SIPCalculatorRepository _calculatorRepository;

  GetLumpsumResultUsecase(this._calculatorRepository);
  @override
  Future<DataState<CalculatedResultEntity>> call({LumpsumData? params}) {
    return _calculatorRepository.calculateLumpsumFutureValue(
      lumpsumData: params!,
    );
  }
}
