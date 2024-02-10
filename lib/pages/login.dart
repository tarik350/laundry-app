import 'package:flutter/material.dart';
import 'package:laundryapp/pages/gradient_background.dart';
import 'package:laundryapp/widgets/GlassBG.dart';
import 'package:laundryapp/widgets/nav_bar.dart';

import '../utils/constants.dart';
import '../utils/helper.dart';
import '../widgets/app_button.dart';
import '../widgets/input_widget.dart';

class Login extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        const Navbar(title: "Login To Your Account"),
        const SizedBox(
          height: 40.0,
        ),
        Positioned(
          bottom: 0,
          child: Glass(
            child: Container(
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.only(
                      topLeft: Radius.circular(20),
                      topRight: Radius.circular(20)),
                  border: Border(top: BorderSide(color: Constants.dartPurple))),
              padding: const EdgeInsets.symmetric(horizontal: 40, vertical: 40),
              width: MediaQuery.of(context).size.width,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.stretch,
                mainAxisAlignment: MainAxisAlignment.end,
                children: [
                  // Lets make a generic input widget
                  InputWidget(
                    topLabel: "Email",
                    hintText: "Enter your email address",
                  ),
                  const SizedBox(
                    height: 25.0,
                  ),
                  InputWidget(
                    topLabel: "Password",
                    obscureText: true,
                    hintText: "Enter your password",
                  ),
                  const SizedBox(
                    height: 15.0,
                  ),
                  GestureDetector(
                    onTap: () {},
                    child: Text(
                      "Forgot Password?",
                      textAlign: TextAlign.right,
                      style: TextStyle(
                        color: Constants.primaryColor,
                        fontWeight: FontWeight.w600,
                      ),
                    ),
                  ),
                  const SizedBox(
                    height: 20.0,
                  ),
                  AppButton(
                    type: ButtonType.PRIMARY,
                    text: "Log In",
                    onPressed: () {
                      nextScreen(context, "/dashboard");
                    },
                  )
                ],
              ),
            ),
          ),
        )
      ],
    );
  }
}
