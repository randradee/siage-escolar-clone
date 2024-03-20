import 'package:flutter/material.dart';
import 'package:siage_escolar/components/login/login_component.dart';

void main() {
  runApp(const SiageEscolarApp());
}

class SiageEscolarApp extends StatelessWidget {
  const SiageEscolarApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        title: 'SiageEscolar',
        theme: ThemeData(
          colorScheme: ColorScheme.fromSeed(seedColor: Colors.blue.shade900),
          useMaterial3: true,
        ),
        home: const LoginPageComponent());
  }
}
