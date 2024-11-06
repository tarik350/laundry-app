import 'package:flutter/material.dart';

class MyWidget extends StatelessWidget {
  final Widget child;
  const MyWidget({super.key, required this.child});

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(border: Border.all(color: Colors.white)),
      child: child,
    );
  }
}
