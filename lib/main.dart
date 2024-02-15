import 'package:efficacy_user/pages/signup/widgets/verification_code_page.dart';
import 'package:flutter/material.dart';
import 'package:feedback/feedback.dart';
import 'utils/utils.dart';
import 'config/config.dart';
import 'pages/pages.dart';

void main() async {
  runApp(
    BetterFeedback(
      theme: FeedbackThemeData(
        activeFeedbackModeColor: accent,
        colorScheme: const ColorScheme.light(
          primary: accent,
          secondary: accent,
        ),
      ),
      child: const EfficacyUser(),
    ),
  );
}

class EfficacyUser extends StatelessWidget {
  const EfficacyUser({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Efficacy User',
      routes: {
        //issue here
        Homepage.routeName: (context) => const Homepage(),
        LoginPage.routeName: (context) => const LoginPage(),
        SplashScreen.routeName: (context) => const SplashScreen(),
        ProfilePage.routeName: (context) => const ProfilePage(),
        SignUpPage.routeName: (context) => const SignUpPage(),
        VerificationCodePage.routeName: (context) =>
            const VerificationCodePage(),
        ForgotPasswordPage.routeName: (context) => const ForgotPasswordPage(),
        PersonalInfoPage.routeName: (context) => const PersonalInfoPage(),
        DevelopersPage.routeName: (context) => const DevelopersPage(),
        NewPasswordPage.routeName: (context) => const NewPasswordPage(),
      },
      builder: ErrorHandler.handle,
      theme: lightTheme,
      initialRoute: SplashScreen.routeName, //ExperimentPage.routeName,
    );
  }
}
