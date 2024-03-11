import 'package:flutter/material.dart';
import 'package:swift_payment/constants/colors.dart';
import 'package:swift_payment/global_widget/global_widget.dart';
import 'package:swift_payment/screens/login/login.dart';
import 'package:swift_payment/utils_size.dart';

class Signup extends StatefulWidget {
  const Signup({Key? key}) : super(key: key);

  @override
  _SignupState createState() => _SignupState();
}

class _SignupState extends State<Signup> {
  final _formKey = GlobalKey<FormState>();
  final TextEditingController _fullNameController = TextEditingController();
  final TextEditingController _userNameController = TextEditingController();
  final TextEditingController _phoneController = TextEditingController();
  final TextEditingController _addressController = TextEditingController();
  final TextEditingController _passwordController = TextEditingController();
  final TextEditingController _emailController = TextEditingController();
  final TextEditingController _refController = TextEditingController();
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    SizeConfig().init(context);
    return Scaffold(
      body: Padding(
        padding:
            EdgeInsets.symmetric(horizontal: getProportionateScreenWidth(15)),
        child: SingleChildScrollView(
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
                height: getProportionateScreenHeight(15),
              ),
              Container(
                  alignment: Alignment.centerLeft,
                  child: Text(
                    "Creat an account",
                    style: TextStyle(
                      fontSize: getProportionateScreenWidth(22),
                      fontWeight: FontWeight.w500,
                    ),
                  )),
              SizedBox(
                height: getProportionateScreenHeight(3),
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
                          "Full Name",
                          black.withOpacity(0.5),
                        )),
                    buildTextField(
                        context: context,
                        hintText: "Enter Full Name",
                        controller: _fullNameController,
                        obscureText: false,
                        keyboardType: TextInputType.text),
                    SizedBox(
                      height: getProportionateScreenHeight(20),
                    ),
                    Container(
                        width: size.width,
                        alignment: Alignment.centerLeft,
                        child: smallText(
                          "Username",
                          black.withOpacity(0.5),
                        )),
                    buildTextField(
                        context: context,
                        hintText: "Enter Username",
                        controller: _userNameController,
                        obscureText: false,
                        keyboardType: TextInputType.text),
                    SizedBox(
                      height: getProportionateScreenHeight(20),
                    ),
                    Container(
                        width: size.width,
                        alignment: Alignment.centerLeft,
                        child: smallText(
                          "Address",
                          black.withOpacity(0.5),
                        )),
                    buildTextField(
                        context: context,
                        hintText: "Enter Eddress",
                        controller: _addressController,
                        obscureText: false,
                        keyboardType: TextInputType.text),
                    SizedBox(
                      height: getProportionateScreenHeight(20),
                    ),
                    Container(
                        width: size.width,
                        alignment: Alignment.centerLeft,
                        child: smallText(
                          "Phone Number",
                          black.withOpacity(0.5),
                        )),
                    buildTextField(
                        context: context,
                        hintText: "Enter Phone number",
                        controller: _phoneController,
                        obscureText: false,
                        keyboardType: TextInputType.text),
                    SizedBox(
                      height: getProportionateScreenHeight(20),
                    ),
                    Container(
                        width: size.width,
                        alignment: Alignment.centerLeft,
                        child: smallText(
                          "Referral Username (Optional)",
                          black.withOpacity(0.5),
                        )),
                    buildTextField(
                      context: context,
                      hintText: "macokorie@gmail.com",
                      controller: _refController,
                      obscureText: false,
                    ),
                    SizedBox(
                      height: getProportionateScreenHeight(20),
                    ),
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
                    SizedBox(
                      height: getProportionateScreenHeight(20),
                    ),
                    customButton(
                      context: context,
                      buttonColor: red,
                      buttonText: "Sign In",
                      buttonTextColor: white,
                      onPressed: () {},
                    ),
                    SizedBox(
                      height: getProportionateScreenHeight(80),
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        mediumText("Already have an account? ", black),
                        InkWell(
                            onTap: () {
                              Navigator.of(context).push(MaterialPageRoute(
                                  builder: (context) => const Login()));
                            },
                            child: mediumText("Sign In", red)),
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
      ),
    );
  }
}
