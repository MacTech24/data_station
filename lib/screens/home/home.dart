import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:swift_payment/constants/colors.dart';
import 'package:swift_payment/global_widget/global_widget.dart';
import 'package:swift_payment/screens/home/home_widget.dart';
import 'package:swift_payment/utils_size.dart';
import 'package:carousel_slider/carousel_slider.dart';

class Home extends StatefulWidget {
  const Home({Key? key}) : super(key: key);

  @override
  _HomeState createState() => _HomeState();
}

class _HomeState extends State<Home> {
  final CarouselController _carouselController = CarouselController();
  int currentIndex = 0;

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    SizeConfig().init(context);
    return Scaffold(
      backgroundColor: lightGrey,
      body: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        children: [
          Container(
            color: Colors.transparent,
            height: size.height * 0.48,
            child: Stack(
              alignment: Alignment.topCenter,
              children: [
                Container(
                  height: size.height * 0.32,
                  decoration: const BoxDecoration(
                      color: red,
                      borderRadius: BorderRadius.only(
                        bottomLeft: Radius.circular(20),
                        bottomRight: Radius.circular(20),
                      )),
                ),
                Positioned(
                  top: size.height * 0.06,
                  child: appBarWidget(context),
                ),
                Positioned(
                  top: size.height * 0.15,
                  child: Container(
                    padding: EdgeInsets.only(
                      left: getProportionateScreenWidth(25),
                      right: getProportionateScreenWidth(15),
                    ),
                    width: size.width,
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                smallText(
                                  "Wallet Balance",
                                  white.withOpacity(0.7),
                                ),
                                largeText("₦170,800.00"),
                              ],
                            ),
                            IconButton(
                                onPressed: () {},
                                icon: const Icon(
                                  Icons.remove_red_eye,
                                  color: lighterGrey,
                                ))
                          ],
                        )
                      ],
                    ),
                  ),
                ),
                Positioned(
                  bottom: 0,
                  right: getProportionateScreenWidth(10),
                  left: getProportionateScreenWidth(10),
                  child: Container(
                    height: getProportionateScreenHeight(200),
                    width: double.infinity,
                    decoration: const BoxDecoration(
                      color: lighterGrey,
                      borderRadius: BorderRadius.all(Radius.circular(10)),
                    ),
                    child: Column(
                      children: [
                        Padding(
                          padding: EdgeInsets.fromLTRB(
                              getProportionateScreenWidth(20),
                              getProportionateScreenWidth(20),
                              getProportionateScreenWidth(20),
                              getProportionateScreenWidth(5)),
                          child: Row(
                            children: [
                              homeCard(
                                  context: context,
                                  image: "assets/icons/add.png",
                                  text: 'Fund Wallet'),
                              SizedBox(
                                width: getProportionateScreenWidth(10),
                              ),
                              homeCard(
                                  context: context,
                                  image: "assets/icons/transaction.png",
                                  text: 'All balances'),
                            ],
                          ),
                        ),
                        const Divider(
                          color: grey,
                        ),
                        SizedBox(
                          height: getProportionateScreenHeight(5),
                        ),
                        allBillCards(context),
                      ],
                    ),
                  ),
                ),
              ],
            ),
          ),
          SizedBox(
            height: getProportionateScreenHeight(10),
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 10),
            child: Container(
              width: size.width,
              height: getProportionateScreenHeight(150),
              color: transparent,
              child: Stack(
                children: [
                  CarouselSlider(
                    items: imageList
                        .map(
                          (item) => Padding(
                            padding: const EdgeInsets.only(left: 5),
                            child: ClipRRect(
                              borderRadius: BorderRadius.circular(10),
                              child: Container(
                                width: double.infinity,
                                child: Image.asset(
                                  item['image_path'],
                                  fit: BoxFit.cover,

                                  // width: double.infinity,
                                ),
                                decoration: BoxDecoration(
                                    borderRadius: BorderRadius.circular(10)),
                              ),
                            ),
                          ),
                        )
                        .toList(),
                    carouselController: _carouselController,
                    options: CarouselOptions(
                      scrollPhysics: const BouncingScrollPhysics(),
                      autoPlay: true,
                      aspectRatio: 2.9,
                      viewportFraction: 1,
                      onPageChanged: (index, reason) {
                        setState(() {
                          currentIndex = index;
                        });
                      },
                    ),
                  ),
                  Positioned(
                    bottom: 0,
                    right: 0,
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: imageList.asMap().entries.map((entry) {
                        return GestureDetector(
                          onTap: () =>
                              _carouselController.animateToPage(entry.key),
                          child: Container(
                            width: currentIndex == entry.key
                                ? getProportionateScreenWidth(20)
                                : getProportionateScreenWidth(5),
                            height: getProportionateScreenWidth(5),
                            margin: const EdgeInsets.symmetric(
                              horizontal: 3.0,
                            ),
                            decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(10),
                                color: currentIndex == entry.key ? red : grey),
                          ),
                        );
                      }).toList(),
                    ),
                  ),
                ],
              ),
            ),
          ),
          SizedBox(
            height: getProportionateScreenWidth(10),
          ),
          Expanded(
            child: Padding(
              padding: const EdgeInsets.symmetric(horizontal: 20),
              child: Container(
                alignment: Alignment.topCenter,
                padding: EdgeInsets.all(getProportionateScreenWidth(10)),
                decoration: const BoxDecoration(
                    color: lighterGrey,
                    borderRadius: BorderRadius.only(
                      topRight: Radius.circular(15),
                      topLeft: Radius.circular(15),
                    )),
                child: Column(
                  children: [
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        mediumText("Recent Transaction", grey),
                        InkWell(
                          onTap: () {},
                          child: Row(
                            children: [
                              mediumText("View All", red),
                              const Icon(
                                Icons.arrow_right,
                                color: red,
                              )
                            ],
                          ),
                        ),
                      ],
                    ),
                    const Divider(
                      color: grey,
                    ),
                    Expanded(
                        child: ListView.builder(
                            physics: const BouncingScrollPhysics(),
                            padding: const EdgeInsets.all(0),
                            itemCount: transactionList.length,
                            itemBuilder: (BuildContext context, int index) {
                              return transactionList[index];
                            }))
                  ],
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
