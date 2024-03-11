import 'package:flutter/material.dart';
import 'package:swift_payment/screens/home/home.dart';
import 'package:swift_payment/utils_size.dart';

Widget buildDashboardScreens(int index) {
  List<Widget> _widgets = [
    const Home(),
    // const TransactionScreen(),
    // const SettingsScreen(),
  ];
  return _widgets[index];
}

Widget bottomNavText(String text, Color textColor) {
  return Text(
    text,
    style: TextStyle(
      color: textColor,
      fontSize: getProportionateScreenWidth(13),
      fontWeight: FontWeight.bold,
      letterSpacing: 1,
    ),
  );
}

Widget bottomNavButton(
  BuildContext? context,
  String text,
  String icon,
  Color activeColor,
  Color activeTextColor,
  void Function()? onTap,
) {
  return SizedBox(
    child: InkWell(
      onTap: onTap,
      child: Column(
        children: [
          // SvgPicture.asset(icon),
          Text(
            text,
            style: TextStyle(color: activeTextColor),
          ),
          Container(
            height: getProportionateScreenHeight(5),
            width: getProportionateScreenWidth(10),
            color: activeColor,
          ),
        ],
      ),
    ),
  );
}
