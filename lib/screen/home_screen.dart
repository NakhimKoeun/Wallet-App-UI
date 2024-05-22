import 'dart:async';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';
import 'package:walletapui/components/bottom_reusable.dart';
import 'package:walletapui/components/cart_reusable.dart';
import 'package:walletapui/components/detail_reusable.dart';
import 'package:walletapui/screen/navscreen.dart';
import 'package:walletapui/screen/nextscreen.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  int _currentPage = 0;

  final pageviewcontroller = PageController(
    initialPage: 0,
    viewportFraction: 0.8,
  );

  @override
  void initState() {
    Timer.periodic(const Duration(seconds: 5), (Timer timer) {
      if (_currentPage < 2) {
        _currentPage++;
      } else {
        _currentPage = 0;
      }

      pageviewcontroller.animateToPage(
        _currentPage,
        duration: const Duration(
            milliseconds: 350), // Corrected from microseconds to milliseconds
        curve: Curves.easeIn,
      );
    });
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: SingleChildScrollView(
          child: Container(
            margin: const EdgeInsets.only(top: 30, left: 20),
            padding: const EdgeInsets.all(8),
            child: Column(
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    const Row(
                      children: [
                        Text(
                          "My",
                          style: TextStyle(
                              color: Colors.black,
                              fontSize: 40,
                              fontWeight: FontWeight.bold),
                        ),
                        SizedBox(
                          width: 5,
                        ),
                        Text(
                          "Cards",
                          style: TextStyle(
                            color: Colors.grey,
                            fontSize: 40,
                          ),
                        ),
                      ],
                    ),
                    Row(
                      children: [
                        Container(
                          height: 40,
                          width: 40,
                          decoration: BoxDecoration(
                              color: Colors.grey,
                              borderRadius: BorderRadius.circular(20)),
                          child: const Icon(Icons.add),
                        )
                      ],
                    )
                  ],
                ),
                const SizedBox(
                  height: 10,
                ),
                SizedBox(
                  height: 200,
                  width: double.infinity,
                  child: PageView(
                    controller: pageviewcontroller,
                    scrollDirection: Axis.horizontal,
                    children: const [
                      CartReusable(
                        color: Colors.red,
                        balance: '\$1000,000',
                        id: '****2345',
                        date: '10/24',
                      ),
                      CartReusable(
                        color: Colors.blue,
                        balance: '\$1000,000',
                        id: '****2345',
                        date: '10/24',
                      ),
                      CartReusable(
                        color: Colors.pink,
                        balance: '\$1000,000',
                        id: '****2345',
                        date: '10/24',
                      ),
                    ],
                  ),
                ),
                const SizedBox(
                  height: 10,
                ),
                SmoothPageIndicator(
                  axisDirection: Axis.horizontal,
                  controller: pageviewcontroller,
                  count: 3,
                  effect: const ExpandingDotsEffect(
                    activeDotColor: Colors.grey,
                    dotColor: Colors.grey,
                    dotHeight: 10,
                    dotWidth: 30,
                    spacing: 24,
                  ),
                ),
                const SizedBox(
                  height: 20,
                ),
                Container(
                  margin: const EdgeInsets.only(left: 15),
                  height: 150,
                  width: double.infinity,
                  child: ListView(
                    shrinkWrap: true,
                    scrollDirection: Axis.horizontal,
                    children: [
                      GestureDetector(
                        onTap: () {
                          Navigator.push(
                              context,
                              MaterialPageRoute(
                                  builder: (_) => NavscreenPage()));
                        },
                        child: BottomReusable(
                          icon: Icons.stacked_line_chart_outlined,
                          color: Colors.white,
                          backgroundColor: Colors.yellow,
                          text: 'Send',
                        ),
                      ),
                      GestureDetector(
                        onTap: () {
                          Navigator.push(context,
                              MaterialPageRoute(builder: (_) => NextScreen()));
                        },
                        child: BottomReusable(
                          icon: Icons.account_balance_wallet,
                          color: Colors.white,
                          backgroundColor: Colors.orange,
                          text: 'Pay',
                        ),
                      ),
                      BottomReusable(
                        icon: Icons.stacked_bar_chart,
                        color: Colors.white,
                        backgroundColor: Colors.blue,
                        text: 'Bills',
                      ),
                    ],
                  ),
                ),
                const SizedBox(
                  height: 10,
                ),
                const DetailReusable(
                  size: 80,
                  text: 'Statistics',
                  title: 'Payment and Income',
                  backgroundColor: Colors.blue,
                  color: Colors.red,
                  icon: Icons.payment,
                ),
                const SizedBox(
                  height: 10,
                ),
                const DetailReusable(
                  size: 80,
                  icon: Icons.checklist_outlined,
                  text: 'Transactions',
                  title: 'Transaction History',
                  color: Colors.pink,
                  backgroundColor: Colors.yellow,
                ),
              ],
            ),
          ),
        ),
      ),
      backgroundColor: Colors.white,
      floatingActionButton: Container(
        height: 70,
        width: 70,
        child: FloatingActionButton(
          onPressed: () {},
          backgroundColor: Colors.red,
          child: const Icon(
            Icons.monetization_on,
            color: Colors.white,
            size: 50,
          ),
        ),
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
      bottomNavigationBar: BottomNavigationBar(
        showUnselectedLabels: false,
        showSelectedLabels: false,
        selectedItemColor: Colors.pink,
        items: const [
          BottomNavigationBarItem(
            icon: Icon(
              Icons.home,
              size: 50,
            ),
            label: "Home",
          ),
          BottomNavigationBarItem(
            icon: Icon(
              Icons.settings,
              size: 50,
            ),
            label: "Settings",
          ),
        ],
      ),
    );
  }
}
