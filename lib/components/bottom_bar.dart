import 'package:flutter/material.dart';
import 'package:google_nav_bar/google_nav_bar.dart';

class BottomBar extends StatelessWidget {
  void Function(int)? onTabChange;
   BottomBar({super.key, required this.onTabChange});

  @override
  Widget build(BuildContext context) {
    return Container(
        padding: EdgeInsets.symmetric(vertical: 15),
        child: GNav(
          activeColor: Colors.grey.shade700,
          color: Colors.grey[400],
          tabActiveBorder: Border.all(color: Colors.white),
          mainAxisAlignment: MainAxisAlignment.center,
          tabBackgroundColor: Colors.grey.shade100,
          tabBorderRadius: 18,
          onTabChange: onTabChange,

          tabs: [
            GButton(
              icon: Icons.home,
              text: "Home",
              gap: 10,
            ),
            GButton(
              icon: Icons.shopping_cart_outlined,
              text: "Cart",
              gap: 10,
            )
          ],
        ));
  }
}
