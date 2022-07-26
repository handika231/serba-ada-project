// import 'dart:html';

import 'package:flutter/widgets.dart';

import 'package:page_transition/page_transition.dart';

import '../login_view.dart';

class AppRouter {
  static navToLoginPage(BuildContext context) {
    return Navigator.pushAndRemoveUntil(
      context,
      PageTransition(
          type: PageTransitionType.scale,
          alignment: Alignment.bottomCenter,
          child: const LoginPage()),
      (Route<dynamic> route) => false,
      // ModalRoute.withName('/'),
    );
  }
}

  //   static navToChangePasswordScreenSurveyor(
  //     BuildContext context, final SurveyorProfileProvider provider) async {
  //   return Navigator.push(
  //     context,
  //     PageTransition(
  //       type: PageTransitionType.scale,
  //       alignment: Alignment.bottomCenter,
  //       child: SurveyorOperatorChangePasswordPage(provider),
  //     ),
  //   );
  // }
