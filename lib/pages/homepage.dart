import 'package:flutter/material.dart';
import 'package:trendycart/pages/cartpage.dart';
import 'package:trendycart/pages/menupage.dart';

class Homepage extends StatefulWidget {
  const Homepage({super.key});

  @override
  State<Homepage> createState() => _HomepageState();
}

class _HomepageState extends State<Homepage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("HomePage", style: TextStyle(color: Colors.black)),
      ),
      endDrawer: Drawer(
        backgroundColor: Colors.deepPurple[100],
        child: ListView(
          children: [
            DrawerHeader(
              child: Center(
                child: Text("T R E N D", style: TextStyle(fontSize: 35)),
              ),
            ),
            ListTile(
              leading: Icon(Icons.manage_search),
              title: Text("Menu", style: TextStyle(fontSize: 20)),
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => MenuPage()),
                );
              },
            ),
            ListTile(
              leading: Icon(Icons.shopping_cart_outlined),
              title: Text("Cart", style: TextStyle(fontSize: 20)),
              onTap: (){
                Navigator.push(context,MaterialPageRoute(builder: (context)=> CartPage()));
              },
            ),
          ],
        ),
      ),
    );
  }
}



