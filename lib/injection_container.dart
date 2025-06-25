import 'package:get_it/get_it.dart';
import 'package:sip_calculator_clean_architecture/features/sip_calculator/data/data_sources/sip_calculator_service.dart';
import 'package:sip_calculator_clean_architecture/features/sip_calculator/data/repository/sip_calculator_repository_impl.dart';
import 'package:sip_calculator_clean_architecture/features/sip_calculator/presentation/bloc/sip_calculator_bloc.dart';

import 'features/sip_calculator/domain/repository/sip_calculator_repository.dart';
import 'features/sip_calculator/domain/usecases/get_lumpsum_result_usecase.dart';
import 'features/sip_calculator/domain/usecases/get_sip_result_usecase.dart';

final sl = GetIt.instance;
Future<void> initializeDependencies() async {
  // register all the dependencies here
  // singleton because we want to use the same instance and instannce will be created at the start
  sl.registerSingleton<SIPCalculatorService>(SIPCalculatorService());

  // lazy singleton because we want to use the same instance and first time it is used
  // it will be created, and then it will be reused
  // we can use this for services, repositories, etc.
  sl.registerLazySingleton<SIPCalculatorRepository>(
    () => SipCalculatorRepositoryImpl(sl<SIPCalculatorService>()),
  );

  sl.registerLazySingleton<GetLumpsumResultUsecase>(
    () => GetLumpsumResultUsecase(sl<SIPCalculatorRepository>()),
  );

  sl.registerLazySingleton<GetSIPResultUsecase>(
    () => GetSIPResultUsecase(sl<SIPCalculatorRepository>()),
  );

  // factory because everytime we want to create a new instance

  sl.registerFactory<SipCalculatorBloc>(
    () => SipCalculatorBloc(
      lumpsumResultUsecase: sl<GetLumpsumResultUsecase>(),
      sipResultUsecase: sl<GetSIPResultUsecase>(),
    ),
  );
}
