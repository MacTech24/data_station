import 'package:flutter/material.dart';
import 'package:swift_payment/constants/colors.dart';
import 'package:swift_payment/screens/dashboard/dashboard_widget.dart';
import 'package:swift_payment/utils_size.dart';

class Dashboard extends StatefulWidget {
  const Dashboard({Key? key}) : super(key: key);

  @override
  _DashboardState createState() => _DashboardState();
}

class _DashboardState extends State<Dashboard> {
  int currentPageIndex = 0;
  @override
  Widget build(BuildContext context) {
    SizeConfig().init(context);
    Size size = MediaQuery.of(context).size;
    return Scaffold(
      body: buildDashboardScreens(currentPageIndex),
      bottomNavigationBar: Container(
        height: getProportionateScreenHeight(75),
        width: size.width,
        color: white,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                bottomNavButton(
                  context,
                  "Home",
                  currentPageIndex == 0
                      ? 'assets/icons/home-active.svg'
                      : 'assets/icons/home-inactive.svg',
                  currentPageIndex == 0 ? red : transparent,
                  currentPageIndex == 0 ? red : black,
                  () {
                    setState(() {
                      currentPageIndex = 0;
                    });
                  },
                ),
                bottomNavButton(
                  context,
                  "Transactions",
                  currentPageIndex == 1
                      ? 'assets/icons/transaction-active.svg'
                      : 'assets/icons/transaction-inactive.svg',
                  currentPageIndex == 1 ? red : transparent,
                  currentPageIndex == 1 ? red : black,
                  () {
                    setState(() {
                      currentPageIndex = 1;
                    });
                  },
                ),
                bottomNavButton(
                  context,
                  "Settings",
                  currentPageIndex == 2
                      ? 'assets/icons/setting-active.svg'
                      : 'assets/icons/setting-inactive.svg',
                  currentPageIndex == 2 ? red : transparent,
                  currentPageIndex == 2 ? red : black,
                  () {
                    setState(() {
                      currentPageIndex = 2;
                    });
                  },
                ),
              ],
            )
          ],
        ),
      ),
    );
  }
}
