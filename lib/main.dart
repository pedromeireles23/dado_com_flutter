import 'dart:math';

import 'package:flutter/material.dart';

void main() {
  return runApp(
    MaterialApp(
      home: Scaffold(
        backgroundColor: Colors.red,
        appBar: AppBar(
          title: Text('Dicee'),
          backgroundColor: Colors.red,
        ),
        body: DicePage(),
      ),
    ),
  );
}
class DicePage extends StatefulWidget {
  const DicePage({super.key});

  @override
  State<DicePage> createState() => _DicePageState();
}

class _DicePageState extends State<DicePage> {
  int numeroDoDadoEsquerdo = 1;
  int numeroDoDadoDireito = 3;
  @override
  Widget build(BuildContext context) {


    return Center(
      child: Row(
        children: <Widget>[
          Expanded(child:TextButton(
              onPressed:(){
                setState(() {
                  numeroDoDadoEsquerdo = Random().nextInt(6)+1;
                });
              },
              child: Image.asset('images/dice$numeroDoDadoEsquerdo.png'))),
          Expanded(child:TextButton(onPressed: (){
            setState(() {
              numeroDoDadoDireito = Random().nextInt(6)+1;
            });

          },
              child: Image.asset('images/dice$numeroDoDadoDireito.png'))),


        ],
      ),
    );
  }
}
