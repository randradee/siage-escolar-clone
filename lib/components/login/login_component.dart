import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

class LoginPageComponent extends StatelessWidget {
  const LoginPageComponent({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
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
      child: const Column(
        children: [
          HeaderSection(
            image: './assets/images/siage_logo_02.png',
            description: "Faça login para iniciar sua sessão",
          ),
          LoginSection(),
          BotaoLogin(texto: 'ACESSAR')
        ],
      ),
    );
  }
}

class HeaderSection extends StatelessWidget {
  const HeaderSection(
      {super.key, required this.image, required this.description});

  final String image;
  final String description;

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        Padding(
          padding: const EdgeInsets.only(top: 100),
          child: Image.asset(
            image,
            width: 240,
            fit: BoxFit.cover,
          ),
        ),
        Padding(
          padding: const EdgeInsets.only(top: 18),
          child: Text(
            description,
            style: const TextStyle(
                color: Colors.white,
                decoration: TextDecoration.none,
                fontSize: 18,
                fontFamily: 'SourceSans3Regular'),
          ),
        )
      ],
    );
  }
}

class LoginSection extends StatelessWidget {
  const LoginSection({super.key});

  @override
  Widget build(BuildContext context) {
    return const Column(
      children: [
        FieldComponent(
          label: 'Usuário',
        )
      ],
    );
  }
}

class FieldComponent extends StatelessWidget {
  const FieldComponent({super.key, required this.label});

  final String label;

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.start,
      children: [
        Text(
          label,
          style: const TextStyle(
            color: Colors.white,
            decoration: TextDecoration.none,
            fontFamily: 'SourceSans3Regular',
            fontSize: 14,
          ),
        ),
        Row(
          children: [
            Icon(Icons.person),
          ],
        )
      ],
    );
  }
}

class BotaoLogin extends StatelessWidget {
  const BotaoLogin({super.key, required this.texto});

  final String texto;

  @override
  Widget build(BuildContext context) {
    return Container(
        width: double.infinity,
        margin: const EdgeInsets.only(left: 10, right: 10),
        child: ElevatedButton(
            onPressed: null,
            style: ButtonStyle(
                shape: MaterialStateProperty.all<RoundedRectangleBorder>(
                    RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(18.0),
                        side: const BorderSide(color: Colors.white)))),
            child: Text(
              texto,
              style: const TextStyle(
                  color: Colors.white,
                  fontFamily: 'SourceSans3Regular',
                  fontSize: 14,
                  fontWeight: FontWeight.w700,
                  letterSpacing: 1),
            )));
  }
}
