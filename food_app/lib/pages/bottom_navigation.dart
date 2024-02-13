import 'package:curved_navigation_bar/curved_navigation_bar.dart';
import 'package:flutter/material.dart';
import 'package:food_app/admin/admin__login.dart';
import 'package:food_app/pages/home.dart';
import 'package:food_app/pages/order.dart';
import 'package:food_app/pages/profile.dart';
import 'package:food_app/pages/wallet.dart';

class BottomNav extends StatefulWidget {
  const BottomNav({super.key});

  @override
  State<BottomNav> createState() => _BottonNavState();
}

class _BottonNavState extends State<BottomNav> {
  int currentTabIndex = 0;

  late List<Widget> pages;
  late Widget currentPage;
  late Home homepage;
  late AdminLogin profile;
  late Order order;
  late Wallet wallet;

  @override
  void initState() {
    homepage = const Home();
    order = const Order();
    profile = const AdminLogin();
    wallet = const Wallet();
    pages = [homepage, order, wallet, profile];
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      bottomNavigationBar: CurvedNavigationBar(
        height: 65,
        backgroundColor: Colors.white,
        color: Colors.black,
        animationDuration: const Duration(milliseconds: 500),
        onTap: (value) {
          setState(() {
            currentTabIndex = value;
          });
        },
        items: const [
          Icon(
            Icons.home_outlined,
            color: Colors.white,
            size: 26,
          ),
          Icon(
            Icons.shopping_bag_outlined,
            color: Colors.white,
            size: 26,
          ),
          Icon(
            Icons.wallet_outlined,
            color: Colors.white,
            size: 26,
          ),
          Icon(
            Icons.person_outline,
            color: Colors.white,
            size: 26,
          ),
        ],
      ),
      body: pages[currentTabIndex],
    );
  }
}
