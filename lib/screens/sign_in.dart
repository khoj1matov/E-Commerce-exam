import 'package:exam/core/constants/const_color.dart';
import 'package:exam/core/constants/font_const.dart';
import 'package:exam/core/constants/my_text_style.dart';
import 'package:exam/mock/model.dart';
import 'package:flutter/material.dart';
import '../widgets/mymessenger.dart';

class SignIn extends StatefulWidget {
  const SignIn({Key? key}) : super(key: key);

  @override
  _SignInState createState() => _SignInState();
}

class _SignInState extends State<SignIn> {
  bool _check = false;

  final _formkey = GlobalKey<FormState>();
  final TextEditingController _emailController = TextEditingController();
  final TextEditingController _passwordController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: true,
      body: Container(
        padding: const EdgeInsets.all(20),
        height: MediaQuery.of(context).size.height,
        width: MediaQuery.of(context).size.width,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Padding(
              padding: const EdgeInsets.only(top: 60.5),
              child: Text(
                "Create your account",
                style: MyTextStyle.mySignUpTextStyle,
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(top: 33),
              child: ElevatedButton(
                style: ElevatedButton.styleFrom(
                  fixedSize: const Size.fromHeight(63),
                  primary: ColorConst.facebookprimaryColor,
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(
                      FontConst.borderRadius,
                    ),
                  ),
                ),
                child: Row(
                  children: [
                    const Padding(
                      padding: EdgeInsets.only(left: 12),
                      child: Icon(
                        Icons.facebook,
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(left: 45.7),
                      child: Text(
                        "CONTINUE WITH FACEBOOK",
                        style: MyTextStyle.myFacebookTextStyle,
                      ),
                    )
                  ],
                ),
                onPressed: () {},
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(top: 20),
              child: ElevatedButton(
                style: ElevatedButton.styleFrom(
                  elevation: 0,
                  fixedSize: const Size.fromHeight(63),
                  primary: ColorConst.googleprimaryColor,
                  side: BorderSide(width: 1, color: ColorConst.borderSideColor),
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(
                      FontConst.borderRadius,
                    ),
                  ),
                ),
                child: Row(
                  children: [
                    const Padding(
                      padding: EdgeInsets.only(left: 12),
                      child: SizedBox(
                        height: 24.06,
                        width: 23.58,
                        child: Image(
                          image: AssetImage("assets/images/google.png"),
                          fit: BoxFit.cover,
                        ),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(left: 45.7),
                      child: Text(
                        "CONTINUE WITH FACEBOOK",
                        style: MyTextStyle.myGoogleTextStyle,
                      ),
                    )
                  ],
                ),
                onPressed: () {},
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(top: 39.5, bottom: 20),
              child: Text(
                "ATAU LOG IN DENGAN EMAIL",
                style: MyTextStyle.myAutoLogTextStyle,
              ),
            ),
            Form(
              key: _formkey,
              child: Column(
                children: [
                  Padding(
                    padding: const EdgeInsets.only(top: 20),
                    child: TextFormField(
                      controller: _emailController,
                      decoration: InputDecoration(
                        hintText: ("Email"),
                        border: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(15)),
                      ),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(top: 20),
                    child: TextFormField(
                      controller: _passwordController,
                      decoration: InputDecoration(
                        hintText: ("Password"),
                        border: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(15)),
                      ),
                    ),
                  ),
                ],
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(top: 80),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  SizedBox(
                    width: MediaQuery.of(context).size.width * 0.8,
                    child: Text(
                      "Save password",
                      style: MyTextStyle.myIHaveTextStyle,
                    ),
                  ),
                  Checkbox(
                    value: _check,
                    onChanged: (status) {
                      setState(() {
                        _check = !_check;
                      });
                    },
                  ),
                ],
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(top: 33),
              child: ElevatedButton(
                style: ElevatedButton.styleFrom(
                  fixedSize: const Size(450, 63),
                  primary: ColorConst.getStartedPrimaryButtonColor,
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(
                      FontConst.borderRadius,
                    ),
                  ),
                ),
                child: Text(
                  "LOG IN",
                  style: MyTextStyle.myGetStartedTextStyle,
                ),
                onPressed: () {
                  signIn();
                },
              ),
            ),
          ],
        ),
      ),
    );
  }

  signIn() {
    if (Model.email == _emailController.text) {
      if (Model.password == _passwordController.text) {
        Navigator.pushReplacementNamed(context, '/menu');
        return true;
      }
    }
    MyMessenger.showMyMessenger("Username yoki password !", context);
  }
}
