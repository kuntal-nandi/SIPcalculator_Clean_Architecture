import 'package:flutter/material.dart';
import 'package:sip_calculator_clean_architecture/features/sip_calculator/presentation/pages/sip_calculator_screen.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'SIP Calculator',
      builder: (context, child) => GestureDetector(
        onTap: () {
          FocusScope.of(context).unfocus(); // Dismiss the keyboard on tap
        },
        child: child,
      ),
      debugShowCheckedModeBanner: false,
      // themeMode: ThemeMode.system,
      // darkTheme: ThemeData.dark(),
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.teal),
      ),
      home: const SIPCalculatorScreen(),
    );
  }
}
