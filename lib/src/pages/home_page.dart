import 'package:alcool_ou_gasolina/src/components/composite/submit_form_component.dart';
import 'package:alcool_ou_gasolina/src/components/simple/logo_component.dart';
import 'package:alcool_ou_gasolina/src/components/composite/result_component.dart';
import 'package:flutter/material.dart';
import 'package:flutter_masked_text/flutter_masked_text.dart';

class Home extends StatefulWidget {
  @override
  _HomeState createState() => _HomeState();
}

class _HomeState extends State<Home> {
  var _gasCtrl = new MoneyMaskedTextController();
  var _alcCtrl = new MoneyMaskedTextController();

  var _busy = false;
  var _completed = false;
  var _resultText = 'Compensa usar álcool';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Theme.of(context).primaryColor,
      body: ListView(
        children: [
          LogoComponent(),
          _completed
              ? ResultComponent(
                  result: _resultText,
                  function: () {},
                )
              : SubmitFormComponent(
                  gasCtrl: _gasCtrl,
                  alcCtrl: _alcCtrl,
                  busy: _busy,
                  function: calculate,
                ),
        ],
      ),
    );
  }

  Future calculate() {
    double alc =
        double.parse(_alcCtrl.text.replaceAll(new RegExp(r'[,.]'), '')) / 100;
    double gas =
        double.parse(_gasCtrl.text.replaceAll(new RegExp(r'[,.]'), '')) / 100;
    double res = alc / gas;

    setState(() {
      _busy = true;
    });
  }
}
