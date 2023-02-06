import 'package:bukoli_operation/services/api/connect_service.dart';
import 'package:flutter/material.dart';
import 'package:flutter_dotenv/flutter_dotenv.dart';
import 'package:bukoli_operation/utils/themes.dart';
import 'package:bukoli_operation/views/auth/login.dart';

Future main() async {
  await dotenv.load(fileName: '.env');
  runApp(const AppKernel());
}

class AppKernel extends StatelessWidget {
  const AppKernel({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: Themes.lightTheme,
      darkTheme: Themes.darkTheme,
      themeMode: ThemeMode.system,
      home: const LoginPage(),
    );
  }
}