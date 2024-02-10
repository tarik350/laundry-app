import 'dart:ui';

import 'package:flutter/rendering.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:laundryapp/pages/create%20order/CaruselOne.dart';
import 'package:flutter/material.dart';
import 'package:laundryapp/utils/constants.dart';

class GradientBackGround extends StatefulWidget {
  final Widget child;
  GradientBackGround({super.key, required this.child});
  @override
  State<GradientBackGround> createState() => _GradientBackGroundState();
}

class _GradientBackGroundState extends State<GradientBackGround> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        backgroundColor: Colors.black,
        body: Stack(
          children: [
            Positioned(
                bottom: 100,
                left: 120,
                child: ClipRRect(
                  child: Center(
                    child: Container(
                      width: 200,
                      height: 300,
                      color: Constants.primaryColor,
                    ),
                  ),
                )),
            Positioned(
                top: 200,
                child: ClipRRect(
                  borderRadius: BorderRadius.circular(100),
                  child: Container(
                    width: 100,
                    height: 100,
                    color: Constants.scaffoldBackgroundColor,
                  ),
                )),
            Positioned(
                right: 0,
                child: ClipRRect(
                  borderRadius: BorderRadius.circular(100),
                  child: Container(
                    width: 100,
                    height: 150,
                    color: Constants.dartPurple,
                  ),
                )),
            SizedBox(
              width: double.infinity,
              height: double.infinity,
              child: BackdropFilter(
                filter: ImageFilter.blur(
                    sigmaX: 100,
                    sigmaY:
                        100), // Adjust sigmaX and sigmaY for the blur strength
                child: Container(
                  color: Colors.transparent,
                  child: SafeArea(
                    child: widget.child,
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
