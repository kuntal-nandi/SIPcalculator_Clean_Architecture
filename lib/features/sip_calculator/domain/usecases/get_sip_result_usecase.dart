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
  /// Calls [_calculatorRepository.calculateSIPFutureValue] with the given
  /// [SIPData].
  ///
  /// Returns a [Future] containing a [DataState] which is either a [DataSuccess]
  /// containing a [CalculatedResultEntity] or a [DataFailed] containing an
  /// exception thrown by the repository.
  ///
  /// The [CalculatedResultEntity] contains the total returns from the
  /// [SIPData].
  Future<DataState<CalculatedResultEntity>> call({SIPData? params}) {
    return _calculatorRepository.calculateSIPFutureValue(sipData: params!);
  }
}
