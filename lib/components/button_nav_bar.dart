import 'package:flutter/material.dart';
import 'package:google_nav_bar/google_nav_bar.dart';

class MyBottomnavbar extends StatelessWidget {
  void Function(int)? onTabChange;

  MyBottomnavbar({super.key, required this.onTabChange});

  @override
  Widget build(BuildContext context) {
    return Container(
        margin: const EdgeInsets.all(25),
        child: GNav(
            onTabChange: (value) => onTabChange!(value),
            color: Color.fromARGB(255, 142, 142, 142),
            mainAxisAlignment: MainAxisAlignment.center,
            activeColor: Color.fromARGB(255, 253, 217, 97),
            tabBackgroundColor: Colors.black,
            tabBorderRadius: 24,
            tabActiveBorder:
                Border.all(color: Color.fromARGB(255, 128, 255, 1)),
            tabs: const [
              GButton(
                icon: Icons.home,
                text: 'Shop',
              ),
              GButton(
                icon: Icons.shopping_bag_outlined,
                text: 'Cart',
              )
            ]));
  }
}
