import 'package:alcool_ou_gasolina/src/components/input_component.dart';
import 'package:alcool_ou_gasolina/src/components/logo_component.dart';
import 'package:flutter/material.dart';
import 'package:flutter_masked_text/flutter_masked_text.dart';

class Home extends StatelessWidget {
  var _gasCtrl = new MoneyMaskedTextController();
  var _alcCtrl = new MoneyMaskedTextController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Theme.of(context).primaryColor,
      body: ListView(
        children: [
          LogoComponent(),
          InputComponent(
            label: 'Gasolina',
            ctrl: _gasCtrl,
          ),
          InputComponent(
            label: 'Álcool',
            ctrl: _alcCtrl,
          ),
        ],
      ),
    );
  }
}
