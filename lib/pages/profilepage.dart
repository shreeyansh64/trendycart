import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class Profilepage extends StatefulWidget {
  const Profilepage({super.key});

  @override
  State<Profilepage> createState() => _ProfilepageState();
}

class _ProfilepageState extends State<Profilepage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color.fromARGB(255, 240, 240, 240),
      appBar: AppBar(
        backgroundColor: Color.fromARGB(255, 240, 240, 240),
        actions: [
          IconButton(
            onPressed: () {},
            icon: Icon(Icons.qr_code_scanner_outlined, size: 30),
          ),
          Padding(
            padding: const EdgeInsets.only(right: 16),
            child: IconButton(
              onPressed: () {},
              icon: Icon(Icons.notifications_none_outlined, size: 30),
            ),
          ),
        ],
      ),
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 16.0),
        child: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                "TREND",
                style: TextStyle(
                  letterSpacing: 5,
                  color: Color.fromARGB(255, 0, 0, 0),
                  fontSize: 40,
                  fontFamily: 'MontSerrat',
                ),
              ),
              Padding(
                padding: const EdgeInsets.symmetric(vertical: 20),
                child: Row(
                  children: [
                    CircleAvatar(child: Icon(Icons.person), radius: 30),
                    SizedBox(width: 15),
                    Column(
                      children: [
                        Text(
                          "Shreeyansh",
                          style: TextStyle(
                            color: Color.fromARGB(255, 0, 0, 0),
                            fontWeight: FontWeight.w500,
                            fontSize: 20,
                          ),
                        ),
                        Text("+91-908765432"),
                      ],
                    ),
                  ],
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(top: 20),
                child: Card(
                  elevation: 6,
                  child: Container(
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(15),
                      gradient: LinearGradient(
                        colors: [
                          Colors.deepPurple.shade300,
                          Colors.deepPurple.shade700,
                        ],
                        begin: Alignment.topLeft,
                        end: Alignment.bottomRight,
                      ),
                    ),
                    height: 220,
                    width: double.infinity,
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Padding(
                          padding: const EdgeInsets.only(
                            left: 16,
                            right: 16,
                            top: 16,
                          ),
                          child: Text(
                            "TREND",
                            style: TextStyle(
                              color: Colors.white,
                              fontFamily: 'MontSerrat',
                              fontSize: 30,
                              letterSpacing: 5,
                            ),
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.only(left: 16, top: 16),
                          child: Text(
                            "Explorer L1",
                            style: TextStyle(
                              color: Colors.white,
                              fontSize: 20,
                              fontWeight: FontWeight.w500,
                            ),
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.only(left: 16, top: 20),
                          child: Container(
                            width: 250,
                            height: 1.5,
                            color: Colors.white,
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.symmetric(
                            vertical: 20,
                            horizontal: 11,
                          ),
                          child: Row(
                            children: [
                              CircleAvatar(
                                child: Icon(Icons.person_2_outlined),
                                backgroundColor: Colors.deepPurple[100],
                                radius: 20,
                              ),
                              SizedBox(width: 10),
                              Text(
                                "Exclusive sale just for members!",
                                style: TextStyle(
                                  color: Colors.white,
                                  fontWeight: FontWeight.w500,
                                  fontSize: 16,
                                ),
                              ),
                            ],
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.symmetric(vertical: 20),
                child: Container(
                  height: 170,
                  width: double.infinity,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(15),
                    color: Colors.white,
                  ),
                  child: Column(
                    children: [
                      Padding(
                        padding: const EdgeInsets.symmetric(
                          vertical: 20,
                          horizontal: 30,
                        ),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Text(
                              "My Orders",
                              style: TextStyle(
                                color: Colors.black,
                                fontWeight: FontWeight.w500,
                                fontSize: 19,
                              ),
                            ),
                            Text(
                              "View More >",
                              style: TextStyle(
                                color: Colors.black,
                                fontSize: 17,
                              ),
                            ),
                          ],
                        ),
                      ),
                      NavigationBarTheme(
                        data: NavigationBarThemeData(
                          backgroundColor: Colors.white,
                          indicatorColor: Colors.white,
                        ),
                        child: Padding(
                          padding: const EdgeInsets.only(top: 10),
                          child: NavigationBar(
                            destinations: [
                              NavigationDestination(
                                icon: Icon(
                                  FontAwesomeIcons.creditCard,
                                  size: 30,
                                ),
                                label: "Unpaid",
                              ),
                              NavigationDestination(
                                icon: Icon(FontAwesomeIcons.truck, size: 30),
                                label: "Processing",
                              ),
                              NavigationDestination(
                                icon: Icon(FontAwesomeIcons.boxOpen, size: 30),
                                label: "Delivered",
                              ),
                              NavigationDestination(
                                icon: Icon(
                                  FontAwesomeIcons.rotateLeft,
                                  size: 30,
                                ),
                                label: "Returns",
                              ),
                            ],
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ),
              Container(
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(15),
                  color: Colors.white,
                ),
                width: double.infinity,
                height: 100,
                child: NavigationBarTheme(
                  data: NavigationBarThemeData(
                    backgroundColor: Colors.white,
                    indicatorColor: Colors.white,
                  ),
                  child: Padding(
                    padding: const EdgeInsets.all(20),
                    child: NavigationBar(
                      destinations: [
                        NavigationDestination(
                          icon: Text(
                            "100",
                            style: TextStyle(color: Colors.black, fontSize: 25),
                          ),
                          label: "Points",
                        ),
                        NavigationDestination(
                          icon: Text(
                            "1",
                            style: TextStyle(color: Colors.black, fontSize: 25),
                          ),
                          label: "Coupons",
                        ),
                        NavigationDestination(
                          icon: Text(
                            "₹1250",
                            style: TextStyle(color: Colors.black, fontSize: 25),
                          ),
                          label: "Wallet",
                        ),
                        NavigationDestination(
                          icon: Text(
                            "6",
                            style: TextStyle(color: Colors.black, fontSize: 25),
                          ),
                          label: "Wishlist",
                        ),
                      ],
                    ),
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(top: 20),
                child: Container(
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(15),
                    color: Colors.white,
                  ),
                  height: 466,
                  width: double.infinity,
                  child: Padding(
                    padding: const EdgeInsets.symmetric(
                      vertical: 20,
                      horizontal: 30,
                    ),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Padding(
                          padding: const EdgeInsets.only(top: 10,bottom: 10),
                          child: Text(
                            "Help Center",
                            style: TextStyle(
                              color: Colors.black,
                              fontWeight: FontWeight.w500,
                              fontSize: 19,
                            ),
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.only(top: 16),
                          child: Container(color: Colors.black,height: 2.5,width: double.infinity,),
                        ),
                        Padding(
                          padding: const EdgeInsets.symmetric(vertical: 36),
                          child: Text("Customer Service",style: TextStyle(fontSize: 15),),
                        ),
                        Container(color: Colors.grey[300],height: 1,width: double.infinity,),
                        Padding(
                          padding: const EdgeInsets.symmetric(vertical: 36),
                          child: Text("Return Policy",style: TextStyle(fontSize: 15),),
                        ),
                        Container(color: Colors.grey[300],height: 1,width: double.infinity,),
                        Padding(
                          padding: const EdgeInsets.symmetric(vertical: 36),
                          child: Text("Shipping & Delivery",style: TextStyle(fontSize: 15),),
                        ),
                        Container(color: Colors.grey[300],height: 1,width: double.infinity,),
                        Padding(
                          padding: const EdgeInsets.only(top: 36,bottom: 36),
                          child: Text("More",style: TextStyle(fontSize: 15),),
                        ),
                        Container(color: Colors.grey[300],height: 1,width: double.infinity,),
                      ],
                    ),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
