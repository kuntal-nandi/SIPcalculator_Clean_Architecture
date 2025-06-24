import '../../../../core/resources/data_state.dart';
import '../../data/models/lumpsum_data.dart';
import '../../data/models/sip_data.dart';
import '../entities/calculated_result_entity.dart';

abstract class SIPCalculatorRepository {
  /// Calculates the future value of a SIP investment.
  ///
  /// Returns a [DataState] containing the future value or an error.
  Future<DataState<CalculatedResultEntity>> calculateSIPFutureValue({
    required SIPData sipData,
  });

  /// Calculates the future value of a lumpsum investment.
  ///
  /// Returns a [DataState] containing the future value or an error.
  Future<DataState<CalculatedResultEntity>> calculateLumpsumFutureValue({
    required LumpsumData lumpsumData,
  });
}
