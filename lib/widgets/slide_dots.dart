import 'package:flutter/material.dart';

class SlideDots extends StatelessWidget {
  bool isActive;
  Color prColor = const Color(0xFF2D5D7B);

  SlideDots(this.isActive);

  @override
  Widget build(BuildContext context) {
    return AnimatedContainer(
      duration: Duration(milliseconds: 150),
      margin: EdgeInsets.symmetric(horizontal: 10),
      height: isActive ? 12 : 8,
      width: isActive ? 12 : 8,
      decoration: BoxDecoration(
        color: isActive ? prColor : Colors.grey,
          borderRadius:
              BorderRadius.all(Radius.circular(12))
      ),
    );
  }
}
