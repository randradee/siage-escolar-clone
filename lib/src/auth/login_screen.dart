import 'package:flutter/material.dart';
import 'package:siage_escolar/src/auth/components/custom_text_field.dart';

class LoginScreen extends StatelessWidget {
  const LoginScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Expanded(
          child: Container(
        width: double.infinity,
        decoration: const BoxDecoration(
            gradient: LinearGradient(
                begin: Alignment.centerLeft,
                end: Alignment.centerRight,
                colors: <Color>[
                  Color.fromRGBO(0, 91, 177, 1),
                  Color.fromRGBO(0, 74, 143, 1),
                  Color.fromRGBO(0, 63, 122, 1),
                ],
                stops: [0, 0.4, 1],
                tileMode: TileMode.mirror)),
        child: Column(
          children: [
            Expanded(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Image.asset(
                    './assets/images/siage_logo_02.png',
                    width: 240,
                    fit: BoxFit.fitWidth,
                  ),
                  const Padding(
                    padding: EdgeInsets.symmetric(vertical: 10),
                    child: Text(
                      'Faça login para iniciar sua sessão',
                      style: TextStyle(
                          color: Colors.white,
                          decoration: TextDecoration.none,
                          fontSize: 16,
                          fontFamily: 'SourceSans3Regular'),
                    ),
                  ),
                ],
              ),
            ),
            Expanded(
              child: Container(
                margin: const EdgeInsets.symmetric(horizontal: 30),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    const Text(
                      'Usuário',
                      style: TextStyle(color: Colors.white),
                    ),
                    const CustomTextField(
                        label: 'Usuário',
                        placeholder: 'CPF',
                        icon: Icons.person),
                    const Text(
                      'Senha',
                      style: TextStyle(color: Colors.white),
                    ),
                    const CustomTextField(
                      label: 'Senha',
                      placeholder: 'Senha',
                      icon: Icons.lock,
                      isSecret: true,
                    ),
                    SizedBox(
                      width: double.infinity,
                      child: ElevatedButton(
                          onPressed: () {},
                          style: ButtonStyle(
                              backgroundColor: MaterialStateProperty.all<Color>(
                                  Colors.transparent),
                              shadowColor: MaterialStateProperty.all<Color>(
                                  Colors.transparent),
                              shape: MaterialStateProperty.all<
                                      RoundedRectangleBorder>(
                                  RoundedRectangleBorder(
                                      borderRadius: BorderRadius.circular(18.0),
                                      side: const BorderSide(
                                          color: Colors.white)))),
                          child: const Text(
                            'ACESSAR',
                            style: TextStyle(
                                color: Colors.white,
                                fontFamily: 'SourceSans3Regular',
                                fontSize: 14,
                                fontWeight: FontWeight.w700,
                                letterSpacing: 1),
                          )),
                    )
                  ],
                ),
              ),
            )
          ],
        ),
      )),
    );
  }
}
