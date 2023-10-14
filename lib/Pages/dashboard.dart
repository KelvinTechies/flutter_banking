import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class Dashboard extends StatefulWidget {
  const Dashboard({super.key});
  @override
  State<Dashboard> createState() => _DashboardState();
}

class _DashboardState extends State<Dashboard> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color.fromARGB(255, 208, 199, 199),
      body: SingleChildScrollView(
        child: Container(
          child: Column(children: [
            Container(
              // color: Colors.green,
              decoration: BoxDecoration(
                  image: DecorationImage(
                      image: AssetImage(
                        "assets/images/images-removebg-preview (3).png",
                      ),
                      fit: BoxFit.cover)),
              width: MediaQuery.of(context).size.width,
              height: 400,
              child: Column(children: [
                SizedBox(
                  height: 20,
                ),
                ListTile(
                  leading: Image.asset(
                    "assets/images/bave-pictures-fl7bASYZgXo-unsplash-removebg-preview.png",
                    width: 30,
                  ),
                  subtitle: Text(
                    "Lorem Ipsium un doh Tra",
                    style: TextStyle(
                        color: Colors.white,
                        fontSize: 10,
                        fontWeight: FontWeight.w500),
                  ),
                  title: Text(
                    "Hi There, Celine Kelvin",
                    style: TextStyle(
                        color: Colors.white,
                        fontSize: 13,
                        fontWeight: FontWeight.w500),
                  ),
                  trailing: Icon(Icons.notification_add_outlined,
                      color: Colors.white),

                  /*  children: [
                    /*  Image.asset(
                            "assets/images/bave-pictures-fl7bASYZgXo-unsplash-removebg-preview.png") */
                    Image.asset(
                      "assets/images/bave-pictures-fl7bASYZgXo-unsplash-removebg-preview.png",
                      width: 30,
                    ),
                    Column(
                      children: [Text("Hi There, Celine Kelvin")],
                    ),
                    Icon(Icons.notification_add_outlined)
                  ], */
                ),
                Spacer(),
                Container(
                  width: 300,
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Image.asset(
                          "assets/images/images-removebg-preview (4).png")
                    ],
                  ),
                ),
                SizedBox(height: 20),
                Stack(
                  children: [
                    /*  top: 70,
                          left: 0,
                          bottom: 0,
                          right: 0, */

                    Positioned(
                      child: Container(
                        decoration: BoxDecoration(
                          color: Colors.white,
                          borderRadius: BorderRadius.all(
                            Radius.circular(10),
                          ),
                        ),
                        width: 350,
                        height: 100,
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceAround,
                          children: [
                            Column(
                              children: [
                                Stack(
                                  children: [
                                    Container(
                                      width: 50,
                                      height: 50,
                                      decoration: BoxDecoration(
                                          borderRadius: BorderRadius.all(
                                              Radius.circular(13)),
                                          color: const Color.fromARGB(
                                              255, 174, 138, 180)),
                                      child: Icon(
                                        Icons.send_and_archive_outlined,
                                        color: const Color.fromARGB(
                                            255, 186, 6, 218),
                                      ),
                                    ),
                                  ],
                                ),
                                Text("Send"),
                              ],
                            ),
                            Column(
                              crossAxisAlignment: CrossAxisAlignment.center,
                              children: [
                                Stack(
                                  children: [
                                    Container(
                                      width: 50,
                                      height: 50,
                                      decoration: BoxDecoration(
                                          borderRadius: BorderRadius.all(
                                              Radius.circular(13)),
                                          color: const Color.fromARGB(
                                              255, 174, 138, 180)),
                                      child: Icon(
                                        Icons.cases_outlined,
                                        color: const Color.fromARGB(
                                            255, 186, 6, 218),
                                      ),
                                    ),
                                  ],
                                ),
                                Text("Bills"),
                              ],
                            ),
                            Column(
                              crossAxisAlignment: CrossAxisAlignment.center,
                              children: [
                                Stack(
                                  children: [
                                    Container(
                                      width: 50,
                                      height: 50,
                                      decoration: BoxDecoration(
                                          borderRadius: BorderRadius.all(
                                              Radius.circular(13)),
                                          color: const Color.fromARGB(
                                              255, 174, 138, 180)),
                                      child: Icon(
                                        Icons.shopping_cart_checkout_outlined,
                                        color: const Color.fromARGB(
                                            255, 186, 6, 218),
                                      ),
                                    ),
                                  ],
                                ),
                                Text("Shop"),
                              ],
                            ),
                            Column(
                              crossAxisAlignment: CrossAxisAlignment.center,
                              children: [
                                Stack(
                                  children: [
                                    Container(
                                      width: 50,
                                      height: 50,
                                      decoration: BoxDecoration(
                                          borderRadius: BorderRadius.all(
                                              Radius.circular(13)),
                                          color: const Color.fromARGB(
                                              255, 174, 138, 180)),
                                      child: Icon(
                                        Icons.scanner,
                                        color: const Color.fromARGB(
                                            255, 186, 6, 218),
                                      ),
                                    ),
                                  ],
                                ),
                                Text("Scan"),
                              ],
                            ),
                          ],
                        ),
                      ),
                    ),
                  ],
                ),
              ]),
            ),
            SizedBox(
              height: 40,
            ),
            // color: const Color.fromARGB(255, 248, 239, 239),
//
            Container(
              height: 390,
              decoration: BoxDecoration(
                  color: Color.fromARGB(255, 253, 250, 250),
                  borderRadius: BorderRadius.only(
                      topRight: Radius.circular(30),
                      topLeft: Radius.circular(30))),
              child: Column(
                children: [
                  Padding(
                    padding: const EdgeInsets.all(15),
                    child: Row(
                      children: [
                        Text(
                          "Recent Activity",
                          style: TextStyle(
                              fontSize: 24, fontWeight: FontWeight.w600),
                        ),
                      ],
                    ),
                  ),
                  Spacer(),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      Padding(
                        padding: const EdgeInsets.all(15),
                        child: Text("Today"),
                      ),
                    ],
                  ),
                  SizedBox(
                    height: 10,
                  ),
                  ListTile(
                    leading: Container(
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.all(Radius.circular(300)),
                          border: Border.all(
                              style: BorderStyle.solid,
                              width: 1,
                              color: Colors.purpleAccent)),
                      child: Image.asset(
                          "assets/images/bave-pictures-fl7bASYZgXo-unsplash-removebg-preview.png",
                          width: 50),
                    ),
                    title: Text("PayPl Balance",
                        style: TextStyle(fontWeight: FontWeight.w400)),
                    subtitle: Text("09/14/2023"),
                    trailing: Text(
                      "-350.00",
                      style: TextStyle(
                        fontWeight: FontWeight.w900,
                      ),
                    ),
                  ),
                  ListTile(
                    leading: Container(
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.all(Radius.circular(300)),
                          border: Border.all(
                              style: BorderStyle.solid,
                              width: 1,
                              color: Colors.purpleAccent)),
                      child: Image.asset(
                          "assets/images/bave-pictures-fl7bASYZgXo-unsplash-removebg-preview.png",
                          width: 50),
                    ),
                    title: Text(
                      "GoPay topUp",
                      style: TextStyle(fontWeight: FontWeight.w400),
                    ),
                    subtitle: Text("10/14/2023"),
                    trailing: Text("-50.00",
                        style: TextStyle(fontWeight: FontWeight.w900)),
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      Padding(
                        padding: const EdgeInsets.all(15),
                        child: Text("Yesterday"),
                      ),
                    ],
                  ),
                  Spacer(),
                  ListTile(
                    leading: Container(
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.all(Radius.circular(300)),
                          border: Border.all(
                              style: BorderStyle.solid,
                              width: 1,
                              color: Colors.purpleAccent)),
                      child: Image.asset(
                          "assets/images/bave-pictures-fl7bASYZgXo-unsplash-removebg-preview.png",
                          width: 50),
                    ),
                    title: Text("PayPl Balance",
                        style: TextStyle(fontWeight: FontWeight.w400)),
                    subtitle: Text("10/14/2023"),
                    trailing: Text(
                      "+100.00",
                      style: TextStyle(fontWeight: FontWeight.w900),
                    ),
                  ),
                ],
              ),
            ),
          ]),
        ),
      ),
      bottomNavigationBar: Container(
        color: Colors.white,
        child: BottomNavigationBar(
          items: const [
            BottomNavigationBarItem(icon: Icon(Icons.home), label: "Home"),
            BottomNavigationBarItem(
                icon: IconButton(Icons.analytics), label: "Statistics"),
            BottomNavigationBarItem(
                icon: Icon(Icons.message), label: "Messages"),
          ],
        ),
      ),
    );
  }
}
