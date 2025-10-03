import 'package:flutter/material.dart';

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
                elevation: 9,
                child: Container(
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(15),
                    gradient: LinearGradient(
                      colors: [Colors.deepPurple.shade300,Colors.deepPurple.shade700],
                      begin: Alignment.topLeft,
                      end: Alignment.bottomRight,
                    )
                  ),
                  height: 220,
                  width: double.infinity,
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Padding(
                        padding: const EdgeInsets.only(left: 16,right: 16 , top: 16),
                        child: Text("TREND",style: TextStyle(color: Colors.white,fontFamily: 'MontSerrat',fontSize: 30,letterSpacing: 5),),
                      ),
                      Padding(
                        padding: const EdgeInsets.only(left: 16,top: 16),
                        child: Text("Explorer L1",style: TextStyle(color: Colors.white,fontSize: 20,fontWeight: FontWeight.w500),),
                      ),
                      Padding(
                        padding: const EdgeInsets.only(left: 16,top: 20),
                        child: Container(width: 250,height: 1.5,color: Colors.white,),
                      ),
                      Padding(
                        padding: const EdgeInsets.symmetric(vertical: 20,horizontal: 11),
                        child: Row(
                          children: [
                            CircleAvatar(child: Icon(Icons.person_2_outlined),backgroundColor: Colors.deepPurple[100],radius: 20,),
                            SizedBox(width: 10,),
                            Text("Exclusive sale just for members!",style: TextStyle(color: Colors.white,fontWeight: FontWeight.w500,fontSize: 16),)
                          ],
                        ),
                      )
                    ],
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
