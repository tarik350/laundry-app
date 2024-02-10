import 'package:flutter/material.dart';

class Glass extends StatelessWidget {
  final Widget child;
  const Glass({super.key, required this.child});

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Stack(children: [
        Container(
            decoration: BoxDecoration(
                gradient: LinearGradient(
                    begin: Alignment.topLeft,
                    end: Alignment.bottomCenter,
                    colors: [
                      Colors.white.withOpacity(.01),
                      Colors.black.withOpacity(.5),
                    ]),
                borderRadius: BorderRadius.circular(20)
                // border: Border.all(color: Colors.white.withOpacity(.4)),
                ),
            child: child)
      ]),
    );
  }
}
