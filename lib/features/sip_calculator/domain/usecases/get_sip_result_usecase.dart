import 'package:sip_calculator_clean_architecture/features/sip_calculator/data/models/sip_data.dart';
import 'package:sip_calculator_clean_architecture/features/sip_calculator/domain/repository/sip_calculator_repository.dart';

import '../../../../core/resources/data_state.dart';
import '../../../../core/usecase/usecase.dart';
import '../entities/calculated_result_entity.dart';

class GetSIPResultUsecase
    implements Usecase<DataState<CalculatedResultEntity>, SIPData> {
  final SIPCalculatorRepository _calculatorRepository;

  GetSIPResultUsecase(this._calculatorRepository);
  @override
  Future<DataState<CalculatedResultEntity>> call({SIPData? params}) {
    return _calculatorRepository.calculateSIPFutureValue(sipData: params!);
  }
}
