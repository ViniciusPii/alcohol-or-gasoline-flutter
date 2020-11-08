import 'package:alcool_ou_gasolina/src/components/simple/button_component.dart';
import 'package:alcool_ou_gasolina/src/components/simple/input_component.dart';
import 'package:flutter/material.dart';
import 'package:flutter_masked_text/flutter_masked_text.dart';

class SubmitFormComponent extends StatelessWidget {
  var gasCtrl = MoneyMaskedTextController();
  var alcCtrl = MoneyMaskedTextController();
  var busy = false;
  Function function;

  SubmitFormComponent({
    @required this.gasCtrl,
    @required this.alcCtrl,
    @required this.busy,
    @required this.function,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        InputComponent(
          ctrl: gasCtrl,
          label: 'Gasolina',
        ),
        InputComponent(
          ctrl: alcCtrl,
          label: 'Álcool',
        ),
        ButtonComponent(
          busy: busy,
          textButton: 'Calcular',
          function: function,
          invert: false,
        ),
      ],
    );
  }
}
