import 'package:flutter/material.dart';

class Visiteds extends StatelessWidget {
  final List<String> visiteds;
  const Visiteds({super.key, required this.visiteds});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.only(left: 20, top: 5),
      child: Row(
        children: <Widget>[
          ...visiteds.map((e) => Image.asset(
                e,
                width: 100,
                height: 100,
              ))
        ],
      ),
    );
  }
}
