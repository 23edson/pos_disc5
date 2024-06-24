import 'package:flutter/material.dart';

//Destaca um título na tela
class TitleItem extends StatelessWidget {
  const TitleItem({super.key, required this.title});

  final String title;

  @override
  Widget build(BuildContext context) {
    return Container(
      alignment: Alignment.centerLeft,
      padding: const EdgeInsets.only(left: 20, top: 5),
      child: Text(title, textAlign: TextAlign.left, style: const TextStyle(fontSize: 22, fontWeight: FontWeight.bold)),
    );
  }
}
