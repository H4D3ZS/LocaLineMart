import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:persistent_bottom_nav_bar/persistent-tab-view.dart';
import 'package:LocaLineMart/components/colors.dart';
import 'package:LocaLineMart/screens/account/account_page.dart';
import 'package:LocaLineMart/screens/cart/cart_history.dart';
import 'package:LocaLineMart/screens/home/home_page_body.dart';
import 'package:LocaLineMart/screens/order/order_screen.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  int _selectedIndex = 0;
  List pages = [
    HomePageBody(),
    OrderScreen(),
    CartHistory(),
    AccountPage(),
  ];

  void onTap(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xFFf9f9fa),
      body: pages[_selectedIndex],
      bottomNavigationBar: BottomNavigationBar(
        backgroundColor: Colors.white,
        selectedFontSize: 0.0,
        unselectedFontSize: 0.0,
        onTap: onTap,
        currentIndex: _selectedIndex,
        selectedItemColor: AppColors.mainColor,
        unselectedItemColor: Colors.amberAccent,
        showSelectedLabels: false,
        showUnselectedLabels: false,
        items: [
          BottomNavigationBarItem(
              icon: Icon(Icons.home_outlined), label: "home"),
          BottomNavigationBarItem(icon: Icon(Icons.archive), label: "home"),
          BottomNavigationBarItem(
              icon: Icon(Icons.shopping_cart), label: "home"),
          BottomNavigationBarItem(icon: Icon(Icons.person), label: "home")
        ],
      ),
    );
  }
}
