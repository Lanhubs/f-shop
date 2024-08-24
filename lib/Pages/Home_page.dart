import 'package:flutter/material.dart';
import 'package:liams/Pages/Cart_page.dart';
import 'package:liams/Pages/Shopping_page.dart';
import 'package:liams/components/Logo.dart';
import 'package:liams/components/SideBtn.dart';
import 'package:liams/components/bottom_bar.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  int _selectedIndex = 0;
  final List<Widget> _pages = [
    ShoppingPage(),
    CartPage(),
  ];
  void navigateBottomBar(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Colors.grey[300],
        body: _pages[_selectedIndex],
        bottomNavigationBar: BottomBar(
          onTabChange: (index) => navigateBottomBar(index),
        ),
        appBar: AppBar(
          backgroundColor: Colors.transparent,
          elevation: 0,
          leading: Builder(builder: (context) {
            return IconButton(
              icon: Icon(
                Icons.menu,
                color: Colors.black,
              ),
              onPressed: () => Scaffold.of(context).openDrawer(),
            );
          }),
          
        ),
        drawer: Drawer(
          backgroundColor: Colors.grey[700],
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Column(
                children: [
                  DrawerHeader(
                    child: Logo(size: 60, radius: 30),
                  ),
                  Sidebtn(icon: Icons.home, title: "Home", onClick: () => {}),
                  Sidebtn(icon: Icons.info, title: "About", onClick: () => {}),
                  Sidebtn(
                      icon: Icons.logout_outlined,
                      title: "Logout",
                      onClick: () => {}),
                ],
              ),
              Padding(
                padding: const EdgeInsets.only(bottom: 25.0),
                child: Sidebtn(
                    icon: Icons.shopping_cart_outlined,
                    title: "Cart",
                    onClick: () => {}),
              ),
            ],
          ),
        ));
  }
}
