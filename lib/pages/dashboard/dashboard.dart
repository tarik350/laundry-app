import 'dart:ui';

import 'package:curved_navigation_bar/curved_navigation_bar.dart';
import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:laundryapp/pages/create%20order/order_slider.dart';
import 'package:laundryapp/pages/dashboard/widget/dashboard_navbar.dart';
import 'package:laundryapp/pages/gradient_background.dart';
import 'package:laundryapp/widgets/GlassBG.dart';
import 'package:laundryapp/widgets/nav_bar.dart';

import '../../utils/constants.dart';
import '../../widgets/latest_orders.dart';
import '../../widgets/location_slider.dart';

class Dashboard extends StatefulWidget {
  @override
  _DashboardState createState() => _DashboardState();
}

class _DashboardState extends State<Dashboard> {
  // Track active index
  int activeIndex = 0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: GradientBackGround(
        child: Stack(
          children: [
            SizedBox(
              child: SingleChildScrollView(
                child: Column(
                  children: [
                    const DashboardNavbar(),
                    const SizedBox(
                      height: 20,
                    ),
                    //greeting
                    Row(
                      children: [
                        Text(
                          "Hello",
                          style: Theme.of(context)
                              .textTheme
                              .headlineLarge
                              ?.copyWith(
                                  color: Constants.darkGray,
                                  fontWeight: FontWeight.bold),
                        ),
                        const SizedBox(
                          width: 12,
                        ),
                        Text(
                          "Smith",
                          style: Theme.of(context)
                              .textTheme
                              .headlineLarge
                              ?.copyWith(
                                  color: Colors.white,
                                  fontWeight: FontWeight.bold),
                        )
                      ],
                    ),
                    const SizedBox(
                      height: 20,
                    ),
                    //dashboard card
                    Stack(
                      children: [
                        SizedBox(
                          width: double.infinity,
                          child: ClipRRect(
                              borderRadius: BorderRadius.circular(20),
                              child: Image.asset(
                                'assets/images/laundaryDashboard.webp',
                                height:
                                    MediaQuery.of(context).size.height * .46,
                                fit: BoxFit.cover,
                              )),
                        ),
                        Padding(
                          padding: const EdgeInsets.symmetric(
                              horizontal: 20, vertical: 30),
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              const Text(
                                'Do you need layndry service',
                                style: TextStyle(
                                    color: Colors.black,
                                    fontSize: 30,
                                    fontWeight: FontWeight.bold),
                              ),
                              Padding(
                                padding: const EdgeInsets.only(right: 120.0),
                                child: Text(
                                  'Start The Ordering Process by pressing the button',
                                  style: TextStyle(
                                      color: Colors.black.withOpacity(.9),
                                      fontWeight: FontWeight.bold),
                                ),
                              ),
                            ],
                          ),
                        ),
                        //dashboard get started button
                        Positioned.fill(
                          child: Align(
                              alignment: Alignment.bottomCenter,
                              child: Container(
                                margin: const EdgeInsets.symmetric(
                                    horizontal: 40, vertical: 20),
                                child: ClipRRect(
                                  borderRadius: BorderRadius.circular(100),
                                  child: BackdropFilter(
                                    filter: ImageFilter.blur(
                                        sigmaX: 4.0, sigmaY: 4.0),
                                    child: Container(
                                      height: 70.0,
                                      decoration: BoxDecoration(
                                          borderRadius:
                                              BorderRadius.circular(100.0),
                                          color: Colors.grey.shade200
                                              .withOpacity(0.6)),
                                      child: Row(
                                          mainAxisAlignment:
                                              MainAxisAlignment.spaceBetween,
                                          children: [
                                            IconButton(
                                                onPressed: () {
                                                  Navigator.of(context).push(
                                                      MaterialPageRoute(
                                                          builder: (_) =>
                                                              OrderSlider()));
                                                },
                                                icon: Container(
                                                    width: 55,
                                                    height: double.maxFinite,
                                                    decoration: BoxDecoration(
                                                        color: Constants
                                                            .primaryColor,
                                                        borderRadius:
                                                            BorderRadius
                                                                .circular(100)),
                                                    child: Icon(
                                                      Icons.arrow_forward_ios,
                                                      color: Constants
                                                          .scaffoldBackgroundColor,
                                                    ))),
                                            Text(
                                              'Get Started',
                                              style: TextStyle(
                                                color: Constants.primaryColor,
                                                fontWeight: FontWeight.bold,
                                              ),
                                            ),
                                            SizedBox(
                                              width: 45,
                                              child: Stack(
                                                children: [
                                                  const Positioned.fill(
                                                    child: Align(
                                                      alignment: Alignment
                                                          .bottomCenter,
                                                      child: Icon(
                                                        Icons.arrow_forward_ios,
                                                        color: Colors.white,
                                                      ),
                                                    ),
                                                  ),
                                                  Icon(
                                                    Icons.arrow_forward_ios,
                                                    color: Constants.darkGray,
                                                  )
                                                ],
                                              ),
                                            )
                                          ]),
                                    ),
                                  ),
                                ),
                              )),
                        )
                      ],
                    ),
                    const SizedBox(
                      height: 12,
                    ),
                    //invite frenieds app
                    Glass(
                        child: SizedBox(
                      height: MediaQuery.of(context).size.height * .1,
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: [
                          Row(
                            children: [
                              Padding(
                                padding: const EdgeInsets.all(20.0),
                                child: Image.asset(
                                  'assets/images/prize.png',
                                  height: double.maxFinite,
                                ),
                              ),
                              Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: [
                                  Text(
                                    'Invite Freinds to earn some money',
                                    style: TextStyle(
                                        color:
                                            Constants.scaffoldBackgroundColor,
                                        fontSize: 12),
                                  ),
                                  const Text(
                                    'Refer and Earn rewards  ',
                                    style: TextStyle(color: Colors.white),
                                  )
                                ],
                              ),
                            ],
                          ),
                          Icon(
                            Icons.arrow_forward_ios,
                            color: Constants.primaryColor,
                          )
                        ],
                      ),
                    )),
                    const SizedBox(
                      height: 12,
                    ),
                  ],
                ),
              ),
            ),
            const Expanded(
                child: Align(
                    alignment: Alignment.bottomCenter, child: BottomNavBar()))
          ],
        ),
      ),
    );
  }
}

class BottomNavBar extends StatelessWidget {
  const BottomNavBar({super.key});

  @override
  Widget build(BuildContext context) {
    return Glass(
        child: Padding(
      padding: const EdgeInsets.all(8.0),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          bottomNavBarIcon(icon: Icons.home),
          bottomNavBarIcon(icon: Icons.bookmark),
          bottomNavBarIcon(icon: Icons.person),
          bottomNavBarIcon(icon: Icons.settings),
        ],
      ),
    ));
  }
}

Widget bottomNavBarIcon({required IconData icon}) {
  return Container(
    padding: const EdgeInsets.all(10),
    decoration: BoxDecoration(
      borderRadius: BorderRadius.circular(100),
      gradient: LinearGradient(
          begin: Alignment.topLeft,
          end: Alignment.bottomCenter,
          colors: [Colors.white.withOpacity(.1), Colors.white.withOpacity(.1)]),

      // border: Border.all(color: Colors.white.withOpacity(.4)),
    ),
    child: ClipRRect(
        borderRadius: BorderRadius.circular(100),
        child: IconButton(
            onPressed: () {},
            icon: Icon(
              icon,
              color: Colors.white,
            ))),
  );
}
