import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:swift_payment/constants/colors.dart';
import 'package:swift_payment/global_widget/global_widget.dart';
import 'package:swift_payment/screens/home/home.dart';
import 'package:swift_payment/screens/signup/signup.dart';

import '../../utils_size.dart';

class Login extends StatefulWidget {
  const Login({Key? key}) : super(key: key);

  @override
  _LoginState createState() => _LoginState();
}

class _LoginState extends State<Login> {
  final _formKey = GlobalKey<FormState>();
  final TextEditingController _emailController = TextEditingController();
  final TextEditingController _passwordController = TextEditingController();
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Scaffold(
      body: Padding(
        padding:
            EdgeInsets.symmetric(horizontal: getProportionateScreenWidth(15)),
        child: Column(
          children: [
            Container(
              height: size.height * 0.1,
            ),
            Container(
                alignment: Alignment.centerLeft,
                width: size.width,
                child: Image.asset("assets/images/logo.png")),
            SizedBox(
              height: getProportionateScreenHeight(10),
            ),
            Container(
                alignment: Alignment.centerLeft,
                child: Text(
                  "Welcome Back 👋",
                  style: TextStyle(
                    fontSize: getProportionateScreenWidth(20),
                    fontWeight: FontWeight.w500,
                  ),
                )),
            SizedBox(
              height: getProportionateScreenHeight(3),
            ),
            Container(
                alignment: Alignment.centerLeft,
                child: Text(
                  "Sign in to your account",
                  style: TextStyle(
                    fontSize: getProportionateScreenWidth(14),
                    color: black.withOpacity(0.5),
                  ),
                )),
            SizedBox(
              height: getProportionateScreenHeight(40),
            ),
            Form(
              key: _formKey,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Container(
                      width: size.width,
                      alignment: Alignment.centerLeft,
                      child: smallText(
                        "Email",
                        black.withOpacity(0.5),
                      )),
                  buildTextField(
                    context: context,
                    hintText: "macsmithkity@gmail.com",
                    controller: _emailController,
                    obscureText: false,
                  ),
                  SizedBox(
                    height: getProportionateScreenHeight(20),
                  ),
                  Container(
                    width: size.width,
                    alignment: Alignment.centerLeft,
                    child: smallText(
                      "Password",
                      black.withOpacity(0.5),
                    ),
                  ),
                  buildTextField(
                      context: context,
                      hintText: "*********",
                      controller: _passwordController,
                      obscureText: false,
                      suffixIcon: IconButton(
                          onPressed: () {},
                          icon: const Icon(
                            Icons.visibility_off,
                            size: 18,
                          ))),
                  Container(
                    width: size.width,
                    alignment: Alignment.centerRight,
                    child: InkWell(
                      onTap: () {},
                      child: mediumText(
                        "Forget Password?",
                        red,
                      ),
                    ),
                  ),
                  SizedBox(
                    height: getProportionateScreenHeight(20),
                  ),
                  customButton(
                    context: context,
                    buttonColor: red,
                    buttonText: "Sign In",
                    buttonTextColor: white,
                    onPressed: () {
                      Navigator.of(context).push(MaterialPageRoute(
                          builder: (context) => const Home()));
                    },
                  ),
                  SizedBox(
                    height: getProportionateScreenHeight(30),
                  ),
                  Row(
                    children: [
                      Expanded(
                        child: Container(
                          color: lightGrey,
                          height: 2,
                        ),
                      ),
                      const Text(" Or Continue with "),
                      Expanded(
                        child: Container(
                          color: lightGrey,
                          height: 2,
                        ),
                      ),
                    ],
                  ),
                  SizedBox(
                    height: getProportionateScreenHeight(40),
                  ),
                  Row(
                    children: [
                      Expanded(
                        child: Container(
                          padding: EdgeInsets.symmetric(
                              vertical: getProportionateScreenHeight(15)),
                          decoration: BoxDecoration(
                            border: Border.all(color: lightGrey, width: 2),
                          ),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Image.asset(
                                'assets/images/flat-color-icons_google.png',
                                width: 20,
                              ),
                              SizedBox(
                                width: getProportionateScreenWidth(5),
                              ),
                              smallText("Google", black),
                            ],
                          ),
                        ),
                      ),
                      SizedBox(
                        width: getProportionateScreenWidth(15),
                      ),
                      Expanded(
                        child: Container(
                          padding: EdgeInsets.symmetric(
                              vertical: getProportionateScreenHeight(15)),
                          decoration: BoxDecoration(
                            border: Border.all(color: lightGrey, width: 2),
                          ),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Image.asset(
                                'assets/images/logos_facebook.png',
                                width: 20,
                              ),
                              SizedBox(
                                width: getProportionateScreenWidth(10),
                              ),
                              smallText("Facebook", black),
                            ],
                          ),
                        ),
                      ),
                    ],
                  ),
                  SizedBox(
                    height: getProportionateScreenHeight(80),
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      mediumText("Don't have an account? ", black),
                      InkWell(
                          onTap: () {
                            Navigator.of(context).push(
                              MaterialPageRoute(
                                builder: (context) => const Signup(),
                              ),
                            );
                          },
                          child: mediumText("Sign up", red)),
                    ],
                  ),
                  SizedBox(
                    height: getProportionateScreenHeight(50),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
