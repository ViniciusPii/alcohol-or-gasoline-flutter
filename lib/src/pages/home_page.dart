import 'package:alcool_ou_gasolina/src/components/logo.dart';
import 'package:flutter/material.dart';

class Home extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Theme.of(context).primaryColor,
      body: ListView(
        children: [
          LogoComponent(),
        ],
      ),
    );
  }
}
