import 'package:flutter/material.dart';
import 'package:laundryapp/pages/login.dart';
import 'package:laundryapp/widgets/GlassBG.dart';

import '../utils/constants.dart';
import '../utils/helper.dart';
import '../widgets/app_button.dart';

class Home extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Positioned(
          bottom: 0,
          child: Container(
            // height: 300,

            width: MediaQuery.of(context).size.width,
            padding: EdgeInsets.symmetric(horizontal: 40, vertical: 40),
            decoration: BoxDecoration(
              border: Border(top: BorderSide(color: Constants.dartPurple)),
              borderRadius: const BorderRadius.only(
                topRight: Radius.circular(30.0),
                topLeft: Radius.circular(30.0),
              ),
            ),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                const SizedBox(height: 20.0),
                Text("Welcome to Laundree!",
                    style: Theme.of(context)
                        .textTheme
                        .headlineMedium
                        ?.copyWith(color: Colors.white)),
                const SizedBox(
                  height: 10.0,
                ),
                Text(
                    "This is the first version of our laundry app. Please sign in or create an account below.",
                    style: Theme.of(context)
                        .textTheme
                        .bodySmall
                        ?.copyWith(color: Constants.dartPurple)), //),
                const SizedBox(
                  height: 40.0,
                ),
                // Let's create a generic button widget
                AppButton(
                  text: "Log In",
                  type: ButtonType.PLAIN,
                  onPressed: () {
                    Navigator.of(context)
                        .push(MaterialPageRoute(builder: (context) => Login()));
                    nextScreen(context, "/login");
                  },
                ),
                const SizedBox(
                  height: 15.0,
                ),
                AppButton(
                  text: "Create an Account",
                  type: ButtonType.PRIMARY,
                  onPressed: () {},
                )
              ],
            ),
          ),
        ),
      ],
    );
  }
}
