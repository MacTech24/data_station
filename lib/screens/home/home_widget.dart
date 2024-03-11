// ignore_for_file: sort_child_properties_last

import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:swift_payment/constants/colors.dart';
import 'package:swift_payment/constants/strings.dart';
import 'package:swift_payment/global_widget/global_widget.dart';
import 'package:swift_payment/utils_size.dart';

Widget appBarWidget(BuildContext context) {
  Size size = MediaQuery.of(context).size;
  return Padding(
    padding: const EdgeInsets.only(bottom: 10),
    child: Container(
      width: size.width,
      height: size.width * 0.13,
      padding:
          EdgeInsets.symmetric(horizontal: getProportionateScreenWidth(20)),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Row(
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Container(
                    height: getProportionateScreenHeight(40),
                    width: getProportionateScreenHeight(40),
                    decoration: const BoxDecoration(
                      color: white,
                      borderRadius: BorderRadius.all(
                        Radius.circular(30),
                      ),
                      image: DecorationImage(
                        image: AssetImage(profileImage),
                        fit: BoxFit.cover,
                      ),
                    ),
                  ),
                  SizedBox(
                    width: getProportionateScreenWidth(5),
                  ),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      mediumText(hello, white),
                      smallText(
                        greetingText,
                        white.withOpacity(0.6),
                      )
                    ],
                  )
                ],
              ),
              //
              Row(
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  InkWell(
                    onTap: () {},
                    child: Image.asset(
                      notificationBell,
                      width: getProportionateScreenWidth(18),
                      color: white,
                    ),
                  ),
                  SizedBox(
                    width: getProportionateScreenWidth(20),
                  ),
                  InkWell(
                    onTap: () {},
                    child: Image.asset(
                      moreBox,
                      width: getProportionateScreenWidth(18),
                      color: white,
                    ),
                  ),
                ],
              ),
            ],
          ),
        ],
      ),
    ),
  );
}

Widget homeCard({
  required BuildContext? context,
  required String image,
  required String text,
}) {
  return Expanded(
    child: Container(
      height: getProportionateScreenHeight(50),
      padding:
          EdgeInsets.symmetric(horizontal: getProportionateScreenWidth(20)),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Image.asset(
            image,
            width: getProportionateScreenWidth(18),
            color: white,
          ),
          SizedBox(
            width: getProportionateScreenWidth(5),
          ),
          smallText(
            text,
            white.withOpacity(0.7),
          )
        ],
      ),
      decoration: const BoxDecoration(
        borderRadius: BorderRadius.all(
          Radius.circular(10),
        ),
        color: red,
      ),
    ),
  );
}

Widget billCard({
  required BuildContext context,
  required String icon,
  required String text,
  void Function()? onTap,
}) {
  return InkWell(
    onTap: () {},
    child: Container(
      width: getProportionateScreenWidth(75),
      color: transparent,
      child: Column(
        children: [
          Image.asset(
            icon,
            width: getProportionateScreenWidth(18),
            color: red,
          ),
          SizedBox(
            height: getProportionateScreenHeight(5),
          ),
          smallerText(text, grey),
        ],
      ),
    ),
  );
}

List imageList = [
  {"id": 1, "image_path": 'assets/icons/dp.jpg'},
  {"id": 2, "image_path": 'assets/icons/dp.jpg'},
  {"id": 3, "image_path": 'assets/icons/dp.jpg'}
];

List<dynamic> transactionList = [
  transactions(
    icon: fundIcon,
    title: fundWallet,
    subTitle: "Today. 9:00am",
    amount: "+30,000.00",
    amountColor: black,
    iconColor: green,
    iconBgColor: lightGreen,
  ),
  transactions(
    icon: "assets/icons/arrow-debit.png",
    title: "Data Bundle Purchase",
    subTitle: "Today. 8:30am",
    amount: "-5,000.00",
    amountColor: red,
    iconColor: red,
    iconBgColor: lightRed,
  ),
  transactions(
    icon: "assets/icons/arrow-debit.png",
    title: "Airtime purchase",
    subTitle: "Today. 10:00am",
    amount: "-3,000.00",
    amountColor: red,
    iconColor: red,
    iconBgColor: lightRed,
  ),
  transactions(
    icon: "assets/icons/arrow-fund.png",
    title: "Fund Wallet",
    subTitle: "Today. 9:00am",
    amount: "+10,000.00",
    amountColor: black,
    iconColor: green,
    iconBgColor: lightGreen,
  ),
];

Widget allBillCards(BuildContext context) {
  return Column(
    children: [
      Padding(
        padding: const EdgeInsets.symmetric(horizontal: 20),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            billCard(
              context: context,
              icon: "assets/icons/phone-call.png",
              text: 'Buy Airtime',
              onTap: () {},
            ),
            billCard(
              context: context,
              icon: "assets/icons/globe.png",
              text: 'Buy data',
              onTap: () {},
            ),
            billCard(
              context: context,
              icon: "assets/icons/tv.png",
              text: 'Cable Tv',
              onTap: () {},
            ),
            billCard(
              context: context,
              icon: "assets/icons/electricity.png",
              text: 'Electricity Bills',
              onTap: () {},
            ),
          ],
        ),
      ),
      SizedBox(
        height: getProportionateScreenHeight(15),
      ),
      Padding(
        padding: const EdgeInsets.symmetric(horizontal: 20),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            billCard(
              context: context,
              icon: "assets/icons/checklist.png",
              text: 'Result Calender',
              onTap: () {},
            ),
            billCard(
              context: context,
              icon: "assets/icons/chatting.png",
              text: 'Bulk SMS',
              onTap: () {},
            ),
            billCard(
              context: context,
              icon: "assets/icons/transaction.png",
              text: 'Recharge Pin',
              onTap: () {},
            ),
            billCard(
              context: context,
              icon: "assets/icons/more.png",
              text: 'more',
              onTap: () {},
            ),
          ],
        ),
      ),
    ],
  );
}

Widget transactions({
  required String icon,
  required String title,
  required String subTitle,
  required String amount,
  required Color amountColor,
  required Color iconBgColor,
  required Color iconColor,
}) {
  return Container(
    color: transparent,
    height: getProportionateScreenHeight(50),
    width: double.infinity,
    child: Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Row(
              children: [
                Container(
                  padding: EdgeInsets.all(10),
                  height: getProportionateScreenHeight(40),
                  width: getProportionateScreenHeight(40),
                  decoration: BoxDecoration(
                    color: iconBgColor,
                    borderRadius: BorderRadius.circular(30),
                  ),
                  child: Image.asset(
                    icon,
                    color: iconColor,
                  ),
                ),
                SizedBox(
                  width: getProportionateScreenWidth(5),
                ),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    smallText(title, black.withOpacity(0.6)),
                    smallerText(subTitle, grey.withOpacity(0.6)),
                  ],
                ),
              ],
            ),
            mediumText(amount, amountColor),
          ],
        )
      ],
    ),
  );
}
