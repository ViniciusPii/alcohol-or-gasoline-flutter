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
  Color _color = Colors.deepPurple;

  var _gasCtrl = new MoneyMaskedTextController();
  var _alcCtrl = new MoneyMaskedTextController();

  var _busy = false;
  var _completed = false;
  var _resultText = '';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Theme.of(context).primaryColor,
      body: AnimatedContainer(
        duration: Duration(
          seconds: 1,
        ),
        color: _color,
        child: ListView(
          children: [
            LogoComponent(),
            _completed
                ? ResultComponent(
                    result: _resultText,
                    function: reset,
                  )
                : SubmitFormComponent(
                    gasCtrl: _gasCtrl,
                    alcCtrl: _alcCtrl,
                    busy: _busy,
                    function: calculate,
                  ),
          ],
        ),
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
      _color = Colors.deepPurpleAccent;
    });

    return new Future.delayed(
      const Duration(seconds: 1),
      () {
        setState(
          () {
            if (res >= 0.7) {
              _resultText = 'Utilize Gasolina!';
            } else {
              _resultText = 'Utilize Álcool!';
            }

            _busy = false;
            _completed = true;
          },
        );
      },
    );
  }

  reset() {
    setState(() {
      _alcCtrl = new MoneyMaskedTextController();
      _gasCtrl = new MoneyMaskedTextController();
      _completed = false;
      _busy = false;
      _color = Colors.deepPurple;
    });
  }
}
