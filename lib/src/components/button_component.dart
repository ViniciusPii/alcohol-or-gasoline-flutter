import 'package:flutter/material.dart';

class ButtonComponent extends StatelessWidget {
  var textButton = "";
  var function;

  ButtonComponent({
    @required this.textButton,
    @required this.function,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      margin: EdgeInsets.all(24),
      height: 60,
      decoration: BoxDecoration(
        color: Colors.white.withOpacity(0.8),
        borderRadius: BorderRadius.circular(60),
      ),
      child: FlatButton(
        child: Text(
          textButton,
          style: TextStyle(
            color: Theme.of(context).primaryColor,
            fontSize: 24,
            fontFamily: 'Big Shoulders Display',
            fontWeight: FontWeight.bold,
          ),
        ),
        onPressed: function,
      ),
    );
  }
}
