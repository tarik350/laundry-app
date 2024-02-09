import 'dart:ui';

import 'package:flutter/rendering.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:laundryapp/pages/create%20order/CaruselOne.dart';
import 'package:flutter/material.dart';
import 'package:laundryapp/utils/constants.dart';

class GradientBackGround extends StatefulWidget {
  @override
  State<GradientBackGround> createState() => _GradientBackGroundState();
}

class _GradientBackGroundState extends State<GradientBackGround> {
  final List<Widget> _list = <Widget>[
    CaruselOne(),
    Center(
        child: Pages(
      text: "Page Two",
      color: Colors.red.shade100,
    )),
    Center(
        child: Pages(
      text: "Page Three",
      color: Colors.grey,
    )),
    Center(
        child: Pages(
      text: "Page Four",
      color: Colors.yellow.shade100,
    ))
  ];
  int _curr = 0;

  final _controller = PageController();

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
                ),
              ),
            ),
            SafeArea(
                child: Column(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Row(
                  children: [
                    Container(
                      width: 60,
                      height: 60,
                      margin: const EdgeInsets.all(20),
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
                      child: Center(
                        child: IconButton(
                          padding: EdgeInsets.zero,
                          onPressed: () {},
                          icon: const Icon(
                            Icons.arrow_back,
                            color: Colors.white,
                          ),
                        ),
                      ),
                    ),
                    SizedBox(
                      width: MediaQuery.of(context).size.width * .52,
                      child: const Center(
                        child: Text(
                          'Do My Laundry',
                          style: TextStyle(
                              color: Colors.white,
                              fontWeight: FontWeight.bold,
                              fontSize: 20),
                        ),
                      ),
                    )
                  ],
                ),
                Container(
                  margin: const EdgeInsets.symmetric(horizontal: 18),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      SizedBox(
                        // decoration: BoxDecoration(
                        // border: Border.all(color: Colors.white)),
                        width: MediaQuery.of(context).size.width,
                        height: 5,
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: List.generate(4, (index) {
                            return Container(
                              width: MediaQuery.of(context).size.width * .2,
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(20),
                                color: _curr == index
                                    ? Constants.dartPurple
                                    : Constants.veryDarkPurple,
                              ),
                            );
                          }),
                        ),
                      ),
                    ],
                  ),
                ),
                Container(
                  margin: const EdgeInsets.all(20),
                  child: Text(
                    'include detail ${_curr + 1}/4',
                    style: TextStyle(
                        color: Constants.dartPurple,
                        fontWeight: FontWeight.bold),
                  ),
                )
              ],
            )),
            Positioned(
              top: 200,
              child: SizedBox(
                height: MediaQuery.of(context).size.height * .7,
                width: MediaQuery.of(context).size.width,
                child: PageView(
                  allowImplicitScrolling: true,
                  scrollDirection: Axis.horizontal,
                  controller: _controller,
                  onPageChanged: (currnetPageIndex) {
                    setState(() {
                      _curr = currnetPageIndex;
                    });
                  },
                  children: _list,
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}

class Pages extends StatelessWidget {
  final text;
  final color;
  Pages({this.text, this.color});
  @override
  Widget build(BuildContext context) {
    return Container(
      color: color,
      child: Center(
        child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              Text(
                text,
                textAlign: TextAlign.center,
                style:
                    const TextStyle(fontSize: 30, fontWeight: FontWeight.w400),
              ),
            ]),
      ),
    );
  }
}
