import 'package:alcool_ou_gasolina/src/components/composite/submit_form_component.dart';
import 'package:alcool_ou_gasolina/src/components/simple/button_component.dart';
import 'package:alcool_ou_gasolina/src/components/simple/input_component.dart';
import 'package:alcool_ou_gasolina/src/components/simple/logo_component.dart';
import 'package:alcool_ou_gasolina/src/components/composite/result_component.dart';
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
          ResultComponent(
            result: '',
            function: (){},
          ),
          SubmitFormComponent(
            gasCtrl: _gasCtrl,
            alcCtrl: _alcCtrl,
            busy: false,
            function: (){},
          ),
        ],
      ),
    );
  }
}
