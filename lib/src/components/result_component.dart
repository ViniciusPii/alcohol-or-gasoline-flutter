import 'package:flutter/material.dart';

import 'button_component.dart';

class ResultComponent extends StatelessWidget {
  var result = "";
  Function function;

  ResultComponent({
    @required this.result,
    @required this.function,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
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
              result,
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
            busy: false,
            invert: true,
            function: function,
          )
        ],
      ),
    );
  }
}
