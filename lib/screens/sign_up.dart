import 'package:exam/core/constants/const_color.dart';
import 'package:exam/core/constants/font_const.dart';
import 'package:exam/core/constants/my_text_style.dart';
import 'package:flutter/material.dart';
import '../mock/data.dart';

class SignUp extends StatefulWidget {
  const SignUp({Key? key}) : super(key: key);

  @override
  _SignUpState createState() => _SignUpState();
}

class _SignUpState extends State<SignUp> {
  bool _check = false;

  final _formkey = GlobalKey<FormState>();
  final TextEditingController _usernameController = TextEditingController();
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
                      controller: _usernameController,
                      decoration: InputDecoration(
                        hintText: ("Name"),
                        border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(15),
                        ),
                      ),
                    ),
                  ),
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
              padding: const EdgeInsets.only(top: 20),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  SizedBox(
                    width: MediaQuery.of(context).size.width * 0.8,
                    child: Row(
                      children: [
                        Text(
                          "i have read the ",
                          style: MyTextStyle.myIHaveTextStyle,
                        ),
                        Text(
                          "Privasy policy",
                          style: MyTextStyle.myPrivasyTextStyle,
                        ),
                      ],
                    ),
                  ),
                  Checkbox(
                      value: _check,
                      onChanged: (status) {
                        setState(() {
                          _check = !_check;
                        });
                      })
                ],
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(top: 29),
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
                  "GET STARTED",
                  style: MyTextStyle.myGetStartedTextStyle,
                ),
                onPressed: () {
                  if (_formkey.currentState!.validate()) {
                    UserModel.name = _usernameController.text.trim();
                    UserModel.email = _emailController.text.trim();
                    UserModel.password = _passwordController.text.trim();
                    Navigator.pushReplacementNamed(context, '/sign_in');
                  }
                },
              ),
            ),
          ],
        ),
      ),
    );
  }
}
