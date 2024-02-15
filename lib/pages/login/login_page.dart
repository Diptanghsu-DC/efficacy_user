import 'package:efficacy_user/config/config.dart';
import 'package:efficacy_user/pages/login/widgets/login_form.dart';
import 'package:efficacy_user/utils/utils.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

class LoginPage extends StatefulWidget {
  //route
  static const String routeName = "/LoginPage";

  const LoginPage({super.key});

  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  LoginFormState loginFormState = LoginFormState();

  @override
  Widget build(BuildContext context) {
    //screen height and width
    Size size = MediaQuery.of(context).size;
    double width = size.width;
    double height = size.height;
    //size constants
    double avatarRadius = width * 0.15;
    double gap = height * 0.05;
    double messageFieldWidth = 0.85;

    return PopScope(
      canPop: false,
      onPopInvoked: (didPop) async {
        if (didPop) {
          return;
        }
        final bool shouldPop = await showExitWarning(context);
        if (shouldPop) {
          SystemNavigator.pop();
        }
      },
      child: Scaffold(
        body: Center(
          child: SingleChildScrollView(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                CircleAvatar(
                  backgroundColor: Theme.of(context).scaffoldBackgroundColor,
                  radius: avatarRadius,
                  child: Image.asset(Assets.efficacyUserLogoImagePath),
                ),
                Text(
                  "Hey! Welcome",
                  style: Theme.of(context).textTheme.displaySmall,
                ),
                const LoginForm(),
              ].separate(gap),
            ),
          ),
        ),
      ),
    );
  }
}
