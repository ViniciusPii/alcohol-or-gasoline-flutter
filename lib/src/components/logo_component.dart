import 'package:flutter/material.dart';

class LogoComponent extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Padding(
          padding: const EdgeInsets.symmetric(vertical: 24),
          child: Image.asset(
            "assets/images/aog-white.png",
            height: 80,
          ),
        ),
        Padding(
          padding: const EdgeInsets.only(bottom: 16),
          child: Text(
            'Álcool ou Gasolina',
            textAlign: TextAlign.center,
            style: TextStyle(
                color: Colors.white,
                fontSize: 32,
                fontFamily: 'Big Shoulders Display'),
          ),
        ),
      ],
    );
  }
}
