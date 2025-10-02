import 'package:flutter/material.dart';
import 'package:trendycart/pages/cartpage.dart';
import 'package:trendycart/pages/homepage.dart';
import 'package:trendycart/pages/menupage.dart';
import 'package:trendycart/pages/profilepage.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      debugShowCheckedModeBanner: true,
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
      ),
      home: const MainPage(),
    );
  }
}

class MainPage extends StatefulWidget {
  const MainPage({super.key});

  @override
  State<MainPage> createState() => _MainPageState();
}

class _MainPageState extends State<MainPage> {
  int _currentState = 0;
  final List<Widget> _pages = [
    Homepage(),
    Menupage(),
    CartPage(),
    Profilepage(),
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: _pages[_currentState],
      bottomNavigationBar: NavigationBarTheme(
        data: NavigationBarThemeData(
          backgroundColor: Colors.black45,
          labelTextStyle: WidgetStatePropertyAll(
            TextStyle(color: Colors.white),
          ),
          iconTheme: WidgetStatePropertyAll(IconThemeData(color: Colors.white)),
          indicatorColor: Colors.blueGrey[300],
        ),
        child: NavigationBar(
          onDestinationSelected: (value) {
            setState(() {
              _currentState = value;
            });
          },
          selectedIndex: _currentState,
          destinations: [
            NavigationDestination(icon: Icon(Icons.home_outlined), label: "Home",
            selectedIcon: Icon(Icons.home_sharp),),
            NavigationDestination(
              icon: Icon(Icons.manage_search_outlined),
              label: "Menu",
            ),
            NavigationDestination(
              icon: Icon(Icons.shopping_cart_outlined),
              label: "Cart",
              selectedIcon: Icon(Icons.shopping_cart_rounded),
            ),
            NavigationDestination(
              icon: Icon(Icons.person_2_outlined),
              label: "Me",
              selectedIcon: Icon(Icons.person_2),
            ),
          ],
        ),
      ),
    );
  }
}
