import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:sip_calculator_clean_architecture/config/routes/app_routes.dart';
import 'package:sip_calculator_clean_architecture/features/sip_calculator/presentation/bloc/sip_calculator_bloc.dart';

import 'config/theme/app_theme.dart';
import 'injection_container.dart';

void main() {
  initializeDependencies();
  // Ensure that the Flutter binding is initialized before running the app
  WidgetsFlutterBinding.ensureInitialized();
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return BlocProvider<SipCalculatorBloc>(
      create: (context) => sl<SipCalculatorBloc>(),
      child: MaterialApp.router(
        title: 'SIP Calculator',
        builder: (context, child) => GestureDetector(
          onTap: () {
            FocusScope.of(context).unfocus(); // Dismiss the keyboard on tap
          },
          child: child,
        ),
        debugShowCheckedModeBanner: false,
        theme: AppTheme.lightTheme,
        // darkTheme: AppTheme.darkTheme,
        // themeMode: ThemeMode.system,
        routerConfig: AppRoutes.router,
      ),
    );
  }
}
