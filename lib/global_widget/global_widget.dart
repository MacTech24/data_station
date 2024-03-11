import 'package:flutter/material.dart';
import 'package:swift_payment/constants/colors.dart';
import 'package:swift_payment/utils_size.dart';

Widget largeText(String text) {
  return Text(
    text,
    style: TextStyle(
      color: white.withOpacity(0.9),
      fontSize: getProportionateScreenWidth(23),
      fontWeight: FontWeight.w500,
    ),
  );
}

Widget mediumText(String text, Color textColor) {
  return Text(
    text,
    style: TextStyle(
        color: textColor,
        fontWeight: FontWeight.w500,
        fontSize: getProportionateScreenWidth(14)),
  );
}

Widget smallText(String text, Color textColor) {
  return Text(
    text,
    style: TextStyle(
        color: textColor,
        fontWeight: FontWeight.w500,
        fontSize: getProportionateScreenWidth(12)),
  );
}

Widget smallerText(String text, Color textColor) {
  return Text(
    text,
    style: TextStyle(
        color: textColor,
        fontWeight: FontWeight.w600,
        fontSize: getProportionateScreenWidth(10)),
  );
}

Widget buildTextField({
  TextEditingController? controller,
  BuildContext? context,
  bool obscureText = true,
  String? hintText,
  Widget? suffixIcon,
  TextInputType? keyboardType,
  void Function(String)? onChanged,
  String? Function(String?)? validator,
}) {
  return Padding(
    padding: EdgeInsets.symmetric(vertical: getProportionateScreenHeight(3)),
    child: SizedBox(
      child: ClipRRect(
        borderRadius: const BorderRadius.all(Radius.circular(5)),
        child: TextFormField(
          controller: controller,
          obscureText: obscureText,
          onChanged: onChanged,
          keyboardType: keyboardType,
          decoration: InputDecoration(
            border: InputBorder.none,
            hintText: hintText,
            suffixIcon: suffixIcon,
            filled: true,
            fillColor: textFieldFillColor,
            hintStyle: TextStyle(
              color: black.withOpacity(0.6),
              fontSize: getProportionateScreenWidth(14),
            ),
          ),
          validator: validator,
        ),
      ),
    ),
  );
}

Widget customButton({
  BuildContext? context,
  Color? buttonColor,
  Color? buttonTextColor,
  String? buttonText,
  void Function()? onPressed,
}) {
  return InkWell(
    onTap: onPressed,
    child: Container(
      height: getProportionateScreenHeight(60),
      width: double.infinity,
      decoration: BoxDecoration(
        color: buttonColor,
        borderRadius: const BorderRadius.all(
          Radius.circular(8),
        ),
      ),
      child: Center(
        child: Text(
          buttonText!,
          style: TextStyle(
              color: buttonTextColor,
              fontWeight: FontWeight.bold,
              fontSize: getProportionateScreenWidth(16)),
        ),
      ),
    ),
  );
}
