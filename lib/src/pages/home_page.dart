import 'package:alcool_ou_gasolina/src/components/logo.dart';
import 'package:flutter/material.dart';
import 'package:flutter_masked_text/flutter_masked_text.dart';

class Home extends StatelessWidget {
  var _gasCtrl = new MoneyMaskedTextController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Theme.of(context).primaryColor,
      body: ListView(
        children: [
          LogoComponent(),
          Row(
            children: [
              Container(
                margin: EdgeInsets.only(right: 16),
                width: 100,
                alignment: Alignment.centerRight,
                child: Text(
                  'Gasolina',
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 32,
                    fontFamily: 'Big Shoulders Display',
                  ),
                ),
              ),
              Expanded(
                child: TextFormField(
                  controller: _gasCtrl,
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
          ),
          Row(
            children: [
              Container(
                margin: EdgeInsets.only(right: 16),
                width: 100,
                alignment: Alignment.centerRight,
                child: Text(
                  'Álcool',
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 32,
                    fontFamily: 'Big Shoulders Display',
                  ),
                ),
              ),
              Expanded(
                child: TextFormField(
                  controller: _gasCtrl,
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
          ),
        ],
      ),
    );
  }
}
