import 'package:flutter/material.dart';
import 'package:siage_escolar/src/auth/login_screen.dart';

void main() {
  runApp(const SiageEscolarApp());
}

class SiageEscolarApp extends StatelessWidget {
  const SiageEscolarApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        title: 'SIAGE-PB Escolar',
        debugShowCheckedModeBanner: false,
        theme: ThemeData(
          colorScheme: ColorScheme.fromSeed(seedColor: Colors.blue.shade900),
          useMaterial3: true,
        ),
        home: const LoginScreen());
  }
}
