import 'package:flutter/material.dart';

class MountainsContainer extends StatelessWidget {
  final Color? color;
  final String text;
  final Color? textcolor;
  const MountainsContainer({
    super.key,
    required this.text,
    this.color,
    this.textcolor,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 54,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(26),
        color: color,
      ),
      child: Center(
        child: Padding(
          padding: const EdgeInsets.only(left: 18, right: 18),
          child: Text(text, style: TextStyle(color: textcolor, fontSize: 16)),
        ),
      ),
    );
  }
}
