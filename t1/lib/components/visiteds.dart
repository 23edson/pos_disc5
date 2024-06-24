import 'package:flutter/material.dart';

//Lista de produtos visitados
class Visiteds extends StatelessWidget {
  final List<String> visiteds;
  const Visiteds({super.key, required this.visiteds});

  @override
  Widget build(BuildContext context) {
    return Card(
        margin: const EdgeInsets.only(left: 20, top: 5, right: 20),
        child: Container(
          padding: const EdgeInsets.only(left: 20, top: 10, bottom: 10, right: 20),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              ...visiteds.map((img) => Image.asset(
                    img,
                    //width: 100,
                    height: 100,
                  ))
            ],
          ),
        ));
  }
}
