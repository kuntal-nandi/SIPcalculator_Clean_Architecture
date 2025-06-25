import 'package:go_router/go_router.dart';
import 'package:sip_calculator_clean_architecture/core/constants/app_constants.dart';

import '../../features/sip_calculator/presentation/pages/sip_calculator_screen.dart';

class AppRoutes {
  static final GoRouter router = GoRouter(
    initialLocation: AppConstants.sipCalculator,
    routes: [
      GoRoute(
        path: AppConstants.sipCalculator,
        name: 'SIPCalculator',
        builder: (context, state) => const SIPCalculatorScreen(),
      ),
    ],
  );
}
