import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:laundryapp/utils/constants.dart';

class DashboardNavbar extends StatelessWidget {
  const DashboardNavbar({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Container(
          width: 60,
          height: 60,
          padding: const EdgeInsets.all(10),
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(100),
            gradient: LinearGradient(
                begin: Alignment.topLeft,
                end: Alignment.bottomCenter,
                colors: [
                  Colors.white.withOpacity(.1),
                  Colors.white.withOpacity(.1)
                ]),

            // border: Border.all(color: Colors.white.withOpacity(.4)),
          ),
          child: ClipRRect(
            borderRadius: BorderRadius.circular(100),
            child: Image.asset(
              'assets/images/logo.webp',
              width: 60,
              height: 60,
            ),
          ),
        ),
        Container(
          padding: EdgeInsets.only(right: 18),
          height: 60,
          decoration: BoxDecoration(
              gradient: LinearGradient(
                colors: [
                  Constants.scaffoldBackgroundColor,
                  Constants.dartPurple
                ],
              ),
              borderRadius: BorderRadius.circular(50)),
          child: Row(crossAxisAlignment: CrossAxisAlignment.center, children: [
            Padding(
              padding: const EdgeInsets.all(3.0),
              child: Image.asset(
                'assets/images/user.png',
              ),
            ),
            const Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  'Jhon smith',
                  style: TextStyle(
                    fontWeight: FontWeight.bold,
                  ),
                ),
                Text(
                  'Premium user',
                  style: TextStyle(fontSize: 10, fontWeight: FontWeight.bold),
                )
              ],
            )
          ]),
        )
      ],
    );
  }
}
