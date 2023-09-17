// Creado por: Uriel Maldonado Cortez
// Asignatura: Desarrollo Movil Integral
//Grado: 10   Grupo: "A"
// Docente: MTI. Marco Antonio Ramirez Hernandez
import 'dart:ffi';
import 'package:flutter/material.dart';

class MyButton extends StatefulWidget {
  @override
  _MyButtonState createState() => _MyButtonState();
}

class _MyButtonState extends State<MyButton> {
  String textButton = "Ara Ara";
  int index = 0;
  List<String> collections = ["YameteKudasai", "AHHHHHHH", "Thanks"];

  void onPressedButton() {
    setState(() {
      textButton = collections[index];
      index = index < collections.length - 1 ? index + 1 : 0;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text("Stateful Widget"),
        ),
        body: Container(
          child: Center(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                Text(textButton, style: TextStyle(fontSize: 40.0)),
                ElevatedButton(
                  child: Text(
                    "Tocame !!",
                    style: TextStyle(color: Colors.white),
                  ),
                  onPressed: onPressedButton,
                )
              ],
            ),
          ),
        ));
  }
}
