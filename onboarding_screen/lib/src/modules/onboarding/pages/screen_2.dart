import 'package:flutter/material.dart';
import 'package:lottie/lottie.dart';
import 'package:onboarding_screen/src/themes/app_images.dart';

class Screen2 extends StatelessWidget {
  final Size size;
  const Screen2({Key? key, required this.size}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Lottie.asset(AppImagens.social),
        Container(
          child: Column(
            children: [
              Text(
                'Lorem Ipsum',
                textAlign: TextAlign.center,
                style: TextStyle(
                  color: Colors.indigo.shade600,
                  fontSize: 28,
                  fontWeight: FontWeight.w700,
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(top: 20),
                child: Container(
                  width: size.width / 1.6,
                  child: Text(
                    'Duis aute irure dolor in reprehenderit in voluptate velit',
                    textAlign: TextAlign.center,
                    style: TextStyle(
                      color: Colors.indigo.shade600,
                      fontSize: 14,
                      fontWeight: FontWeight.w400,
                    ),
                  ),
                ),
              ),
            ],
          ),
        )
      ],
    );
  }
}
