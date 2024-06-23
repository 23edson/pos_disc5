import 'package:flutter/material.dart';

class Banner extends StatelessWidget {
  final String image;
  final double width;
  final double height;

  const Banner({super.key, required this.image, this.width = 600, this.height = 240});

  @override
  Widget build(BuildContext context) {
    return Column(children: [
      Container(
        padding: const EdgeInsets.all(8.0),
        decoration: const BoxDecoration(
          borderRadius: BorderRadius.all(Radius.circular(8.0)),
          color: Colors.white,
        ),
        child: Image.asset(image, width: width, height: height, fit: BoxFit.fill),
      ),
      const Padding(padding: EdgeInsets.all(8.0))
    ]);
  }
}
