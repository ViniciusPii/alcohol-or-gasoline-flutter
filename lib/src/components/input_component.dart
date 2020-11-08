import 'package:flutter/material.dart';
import 'package:flutter_masked_text/flutter_masked_text.dart';

class InputComponent extends StatelessWidget {
  var label = "";
  var ctrl = new MoneyMaskedTextController();

  InputComponent({
    @required this.label,
    @required this.ctrl,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Container(
          margin: EdgeInsets.only(right: 16),
          width: 100,
          alignment: Alignment.centerRight,
          child: Text(
            label,
            style: TextStyle(
              color: Colors.white,
              fontSize: 32,
              fontFamily: 'Big Shoulders Display',
            ),
          ),
        ),
        Expanded(
          child: TextFormField(
            controller: ctrl,
            keyboardType: TextInputType.number,
            style: TextStyle(
              color: Colors.white,
              fontSize: 48,
              fontFamily: 'Big Shoulders Display',
            ),
            decoration: InputDecoration(
              border: InputBorder.none,
            ),
          ),
        ),
      ],
    );
  }
}
