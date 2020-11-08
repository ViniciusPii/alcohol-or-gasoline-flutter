import 'package:flutter/material.dart';

class ButtonComponent extends StatelessWidget {
  var textButton = "";
  var busy = false;
  var invert = false;
  Function function;

  ButtonComponent({
    @required this.textButton,
    @required this.function,
    @required this.invert,
    @required this.busy,
  });

  @override
  Widget build(BuildContext context) {
    return busy
        ? Container(
            alignment: Alignment.center,
            height: 50,
            child: CircularProgressIndicator(
              backgroundColor: Colors.white,
            ),
          )
        : Container(
            width: double.infinity,
            margin: EdgeInsets.all(24),
            height: 60,
            decoration: BoxDecoration(
              color: invert
                  ? Theme.of(context).primaryColor
                  : Colors.white.withOpacity(0.8),
              borderRadius: BorderRadius.circular(60),
            ),
            child: FlatButton(
              child: Text(
                textButton,
                style: TextStyle(
                  color: invert
                      ? Colors.white.withOpacity(0.8)
                      : Theme.of(context).primaryColor,
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
