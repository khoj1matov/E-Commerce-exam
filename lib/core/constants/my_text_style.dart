import 'package:exam/core/constants/const_color.dart';
import 'package:flutter/cupertino.dart';

class MyTextStyle {
  static get mySignUpTextStyle => TextStyle(
        fontWeight: FontWeight.bold,
        fontSize: 28,
        color: ColorConst.kPrimaryColor,
      );

  static get myFacebookTextStyle => TextStyle(
        fontSize: 14,
        color: ColorConst.facebookTextStyleColor,
      );

  static get myGoogleTextStyle => TextStyle(
        fontSize: 14,
        color: ColorConst.googleTextStyleColor,
      );

  static get myAutoLogTextStyle => TextStyle(
        fontSize: 14,
        color: ColorConst.autoLogColor,
      );
  static get myGetStartedTextStyle => TextStyle(
        fontSize: 14,
        color: ColorConst.getStartedButtonColor,
      );

  static get myIHaveTextStyle => TextStyle(
        fontSize: 14,
        color: ColorConst.iHaveTextStyleColor,
      );
}
