import 'package:alcool_ou_gasolina/src/components/button_component.dart';
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
          Container(
            margin: EdgeInsets.all(32),
            decoration: BoxDecoration(
              color: Colors.white.withOpacity(0.8),
              borderRadius: BorderRadius.circular(24),
            ),
            child: Column(
              children: [
                Padding(
                  padding: const EdgeInsets.all(24),
                  child: Text(
                    'Compensa Utilizar Gasolina',
                    textAlign: TextAlign.center,
                    style: TextStyle(
                      color: Theme.of(context).primaryColor,
                      fontSize: 32,
                      fontFamily: 'Big Shoulders Display',
                    ),
                  ),
                ),
                ButtonComponent(
                  textButton: 'Calcular Novamente',
                  function: (){},
                )
              ],
            ),
          ),
          InputComponent(
            label: 'Gasolina',
            ctrl: _gasCtrl,
          ),
          InputComponent(
            label: 'Álcool',
            ctrl: _alcCtrl,
          ),
          ButtonComponent(
            textButton: 'Calcular',
            function: () {},
          ),
        ],
      ),
    );
  }
}
