import 'package:flutter/material.dart';

class TitleItem extends StatelessWidget {
  const TitleItem({Key? key, required this.title}) : super(key: key);

  final String title;

  @override
  Widget build(BuildContext context) {
    return Container(
      alignment: Alignment.centerLeft,
      padding: const EdgeInsets.only(left: 20, top: 5),
      child: Text(title, textAlign: TextAlign.left, style: TextStyle(fontSize: 22, fontWeight: FontWeight.bold)),
    );
  }
}
