import 'package:flutter/material.dart';
import 'package:shellslicing/screens/accounts/account.dart';
import 'package:shellslicing/screens/homepage.dart';
import 'package:shellslicing/screens/mycard.dart';
import 'package:shellslicing/screens/offers.dart';

class NavBar extends StatefulWidget {
  const NavBar({super.key});

  @override
  State<NavBar> createState() => _NavBarState();
}

class _NavBarState extends State<NavBar> {
  int _currentIndex = 0;
  final List<Widget> _children = [
    HomePage(),
    MyCard(),
    OffersPage(),
    AccountPage(),
  ];
  void _onTappedBar(int index) {
    setState(() {
      _currentIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // resizeToAvoidBottomInset: false,
      body: _children[_currentIndex],
      bottomNavigationBar: BottomNavigationBar(
          selectedItemColor: Colors.black,
          unselectedItemColor: Colors.grey,
          backgroundColor: Colors.white,
          onTap: _onTappedBar,
          currentIndex: _currentIndex,
          showSelectedLabels: true,
          showUnselectedLabels: true,
          items: [
            BottomNavigationBarItem(
              icon: Icon(Icons.home),
              label: "Home",
            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.credit_card),
              label: "My Card",
            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.favorite),
              label: "Offers",
            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.notifications),
              label: "Profile",
            )
          ]),
    );
  }
}
