import 'package:exam/screens/first_page.dart';
import 'package:exam/screens/sign_in.dart';
import 'package:exam/screens/sign_up.dart';
import 'package:flutter/material.dart';

class MyRoute {
  Route? onGenerateRoute(RouteSettings s) {
    var args = s.arguments;

    switch (s.name) {
      case '/':
        return MaterialPageRoute(builder: (_) => const First());
      case '/sign_up':
        return MaterialPageRoute(builder: (_) => const SignUp());
      case '/sign_in':
        return MaterialPageRoute(builder: (_) => const SignIn());
    }
  }
}