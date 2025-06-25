import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:sip_calculator_clean_architecture/core/resources/data_state.dart';
import 'package:sip_calculator_clean_architecture/features/sip_calculator/data/models/lumpsum_data.dart';

import '../../../../common/helper/enums.dart';
import '../../data/models/sip_data.dart';
import '../../domain/entities/calculated_result_entity.dart';
import '../../domain/usecases/get_lumpsum_result_usecase.dart';
import '../../domain/usecases/get_sip_result_usecase.dart';

part 'sip_calculator_bloc.freezed.dart';
part 'sip_calculator_event.dart';
part 'sip_calculator_state.dart';

class SipCalculatorBloc extends Bloc<SipCalculatorEvent, SipCalculatorState> {
  final GetLumpsumResultUsecase _lumpsumUsecase;
  final GetSIPResultUsecase _sipUsecase;
  SipCalculatorBloc({
    required GetLumpsumResultUsecase lumpsumResultUsecase,
    required GetSIPResultUsecase sipResultUsecase,
  }) : _lumpsumUsecase = lumpsumResultUsecase,
       _sipUsecase = sipResultUsecase,
       super(SipCalculatorState.initial()) {
    on<SipCalculatorEvent>((
      SipCalculatorEvent event,
      Emitter<SipCalculatorState> emit,
    ) async {
      await event.map(
        started: (value) {
          emit(SipCalculatorState.initial());
        },
        investmentTypeChanged: (value) {
          emit(
            SipCalculatorState.initial().copyWith(
              investmentType: value.investmentType,
            ),
          );
        },
        amountChanged: (value) {
          emit(state.copyWith(amount: value.amount));
        },
        returnRateChanged: (value) {
          emit(state.copyWith(returnRate: value.returnRate));
        },
        timePeriodChanged: (value) {
          emit(state.copyWith(timePeriod: value.timePeriod));
        },
        calculateClicked: (value) async {
          DataState<CalculatedResultEntity> result;
          emit(state.copyWith(isLoading: true));
          await Future.delayed(const Duration(milliseconds: 300));
          result = state.investmentType == InvestmentType.Lumpsum
              ? await _lumpsumUsecase.call(params: state.toLumpsumData)
              : await _sipUsecase.call(params: state.toSIPData);
          emit(
            state.copyWith(isLoading: false, calculatedResult: result.data!),
          );
        },
      );
    });
  }
}
