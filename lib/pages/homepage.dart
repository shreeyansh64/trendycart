import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:trendycart/pages/profilepage.dart';

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
        title: Text(
          "TREND",
          style: TextStyle(
            color: Colors.black,
            fontFamily: 'MontSerrat',
            fontSize: 35,
            letterSpacing: 6,
          ),
        ),
        actions: [
          Padding(
            padding: const EdgeInsets.only(right: 16.0),
            child: IconButton(
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => Profilepage()),
                );
              },
              icon: CircleAvatar(child: Icon(Icons.person, size: 25)),
            ),
          ),
        ],
      ),
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 16),
        child: SingleChildScrollView(
          child: Column(
            children: [
              Padding(
                padding: const EdgeInsets.only(top: 23),
                child: OutlinedButton(
                  style: OutlinedButton.styleFrom(
                    backgroundColor: Color.fromARGB(255, 240, 240, 240),
                    padding: EdgeInsets.symmetric(horizontal: 20, vertical: 20),
                    side: BorderSide(
                      width: 1.0,
                      color: Color.fromARGB(255, 245, 245, 245),
                    ),
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(15),
                    ),
                  ),
                  onPressed: () {},
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Container(
                        child: Row(
                          children: [
                            Icon(
                              Icons.search,
                              color: Color.fromARGB(255, 150, 150, 150),
                            ),
                            SizedBox(width: 10),
                            Text(
                              "Search for your favorite outfits",
                              style: TextStyle(
                                color: Color.fromARGB(255, 150, 150, 150),
                              ),
                            ),
                          ],
                        ),
                      ),
                      Icon(
                        Icons.photo_camera_outlined,
                        color: Color.fromARGB(255, 150, 150, 150),
                      ),
                    ],
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.symmetric(vertical: 30),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: [
                    Row(
                      children: [
                        Icon(
                          FontAwesomeIcons.boxOpen,
                          color: Colors.black,
                          size: 30,
                        ),
                        SizedBox(width: 10),
                        Column(
                          children: [
                            Text(
                              "Easy returns",
                              style: TextStyle(
                                color: Colors.black,
                                fontSize: 16,
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                            Text("Free pick up"),
                          ],
                        ),
                      ],
                    ),
                    Row(
                      children: [
                        Icon(Icons.flash_on, color: Colors.black, size: 30),
                        SizedBox(width: 10),
                        Column(
                          children: [
                            Text(
                              "Fast delivery",
                              style: TextStyle(
                                color: Colors.black,
                                fontSize: 16,
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                            Text("4000+ styles"),
                          ],
                        ),
                      ],
                    ),
                    Row(
                      children: [
                        Icon(
                          FontAwesomeIcons.truckFast,
                          color: Colors.black,
                          size: 30,
                        ),
                        SizedBox(width: 10),
                        Column(
                          children: [
                            Text(
                              "Free shipping",
                              style: TextStyle(
                                color: Colors.black,
                                fontSize: 16,
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                            Text("For orders 990+"),
                          ],
                        ),
                      ],
                    ),
                  ],
                ),
              ),
              Image.asset(
                'assets/images/sale.png',
                width: double.infinity,
                height: 700,
                fit: BoxFit.cover,
              ),
              Padding(
                padding: const EdgeInsets.symmetric(vertical: 40),
                child: Text(
                  "PRICE DROP CORNER",
                  style: TextStyle(
                    color: Colors.black,
                    fontFamily: 'Poppins',
                    fontSize: 40,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(bottom: 40),
                child: Image.asset(
                  'assets/images/price_drop.webp',
                  width: double.infinity,
                  height: 240,
                  fit: BoxFit.cover,
                ),
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Image.asset('assets/images/price_drop2.webp',width: 200,height: 250,fit: BoxFit.cover,),
                  Image.asset('assets/images/price_drop3.webp',width: 270,height: 250,fit: BoxFit.cover,),
                ],
              )
            ],
          ),
        ),
      ),
    );
  }
}
