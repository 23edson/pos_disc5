import 'package:flutter/material.dart';

class CustomBottomNavbar extends StatelessWidget {
  const CustomBottomNavbar({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
          borderRadius: const BorderRadius.vertical(top: Radius.circular(36)), color: const Color(0xFF1E1E1E)),
      padding: const EdgeInsets.symmetric(vertical: 30),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: <Widget>[
          Row(
            children: <Widget>[
              CustomIcon(Icons.search, const Color(0xFFF78BC5)),
              const Padding(
                padding: EdgeInsets.only(left: 10),
                child: Text(
                  "Explore",
                  style: TextStyle(color: Colors.white, fontSize: 20, fontWeight: FontWeight.w500),
                ),
              )
            ],
          ),
          CustomIcon(Icons.ac_unit_outlined, const Color(0xFFA690DB)),
          CustomIcon(Icons.abc_rounded, const Color(0xFFA690DB)),
        ],
      ),
    );
  }

  // ignore: non_constant_identifier_names
  Icon CustomIcon(IconData icon, Color color) {
    return Icon(
      icon,
      size: 30,
      color: color,
    );
  }
}
