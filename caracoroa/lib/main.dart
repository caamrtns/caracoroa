import 'dart:math';

import 'package:caracoroa/resultado.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const MaterialApp(home: CaraCoroa(),
  debugShowCheckedModeBanner: false,));
}

class CaraCoroa extends StatefulWidget {
  const CaraCoroa({ Key? key }) : super(key: key);

  @override
  _CaraCoroaState createState() => _CaraCoroaState();
}

class _CaraCoroaState extends State<CaraCoroa> {
  void exibirResultado(){
    var itens = ['cara','coroa'];
    var numero = Random().nextInt(itens.length);
    var resultado = itens[numero];
    Navigator.push(context, MaterialPageRoute(builder: (context)=> Resultado(resultado)));
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.green,
      body: Container(
        child: Column(

          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.stretch,

          children: [
            Image.asset("images/logo.png"),

            GestureDetector(
              child: Image.asset("images/botao_jogar.png"),
              onTap: exibirResultado
              )
          ],
        ),
      )
    );
  }
}