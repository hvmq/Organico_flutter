import 'package:flutter/material.dart';
import 'package:organico/screens/explore_screen.dart';
import 'package:organico/screens/home_screen.dart';
import 'package:organico/screens/my_cart_screen.dart';
import 'package:organico/screens/profile_screen.dart';

class MainScreen extends StatefulWidget {
  const MainScreen({Key? key}) : super(key: key);

  @override
  State<MainScreen> createState() => _MainScreen();
}

class _MainScreen extends State<MainScreen> {
  int selectedItem = 0;
  var pages = [
    const HomeScreen(),
    const ExploreScreen(),
    const MyCartScreen(),
    const ProfileScreen()
  ];
  var pageController = PageController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      extendBody: true,
      body: PageView(
        children: pages,
        onPageChanged: (index) {
          setState(() {
            selectedItem = index;
          });
        },
        controller: pageController,
      ),
      bottomNavigationBar: Container(
        decoration: const BoxDecoration(
          borderRadius: BorderRadius.only(
              topRight: Radius.circular(30), topLeft: Radius.circular(30)),
          boxShadow: [
            BoxShadow(color: Colors.black54, spreadRadius: 1, blurRadius: 10),
          ],
        ),
        child: ClipRRect(
          borderRadius: const BorderRadius.only(
            topLeft: Radius.circular(20.0),
            topRight: Radius.circular(20.0),
          ),
          child: BottomNavigationBar(
            type: BottomNavigationBarType.fixed,
            items: const <BottomNavigationBarItem>[
              BottomNavigationBarItem(
                icon: Icon(Icons.home),
                label: 'Home',
              ),
              BottomNavigationBarItem(
                icon: Icon(Icons.search),
                label: 'Explore',
              ),
              BottomNavigationBarItem(
                icon: Icon(Icons.shopping_cart_outlined),
                label: 'Cart',
              ),
              BottomNavigationBarItem(
                icon: Icon(Icons.person_outlined),
                label: 'Profile',
              ),
            ],
            currentIndex: selectedItem,
            selectedItemColor: Colors.green[800],
            onTap: (index) {
              setState(() {
                selectedItem = index;
                pageController.animateToPage(selectedItem,
                    duration: const Duration(milliseconds: 200),
                    curve: Curves.linear);
              });
            },
          ),
        ),
      ),
    );
  }
}
