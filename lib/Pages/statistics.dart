import 'package:banking/Pages/dashboard.dart';
import 'package:flutter/material.dart';
import 'package:fl_chart/fl_chart.dart';

class StatisticsPage extends StatefulWidget {
  const StatisticsPage({super.key});

  @override
  State<StatisticsPage> createState() => _StatisticsPageState();
}

_myForm() {
  _selected_value = _productList[0];
}

_myForm2() {
  _selected_value2 = _productList2[0];
}

final _productList = ['Grocerries', "Chocolate"];
final _productList2 = ['Bills', "Expenses"];
final _productList3 = ['Food', "Fruits"];
final _ins = ['Ins', "Outs"];
String _selected_value = "Grocerries";
String _selected_value2 = "Bills";
String _selected_value3 = "Food";
String _selected_value4 = "Ins";

class _StatisticsPageState extends State<StatisticsPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Color.fromARGB(255, 208, 199, 199),
        body: SafeArea(
          child: SingleChildScrollView(
            child: Container(
              child: Column(
                children: [
                  Stack(
                    children: [
                      Container(
                        height: 400,
                        width: MediaQuery.of(context).size.width,
                        decoration: BoxDecoration(
                            image: DecorationImage(
                                fit: BoxFit.cover,
                                image: AssetImage(
                                  "assets/images/images-removebg-preview (3).png",
                                ))),
                        child: Column(
                          children: [
                            Center(
                              child: Column(
                                children: [
                                  SizedBox(
                                    height: 35,
                                  ),
                                  Text(
                                    "Statistics",
                                    style: TextStyle(
                                        color: Colors.white,
                                        fontSize: 20,
                                        fontWeight: FontWeight.w700),
                                  ),
                                  SizedBox(
                                    height: 20,
                                  ),
                                  Positioned(
                                    bottom: 0,
                                    child: Container(
                                      width: 350,
                                      height: 300,
                                      decoration: BoxDecoration(
                                        color: Colors.white,
                                        borderRadius: BorderRadius.all(
                                          Radius.circular(14),
                                        ),
                                      ),
                                      child: Padding(
                                        padding: const EdgeInsets.all(18.0),
                                        child: Column(
                                          crossAxisAlignment:
                                              CrossAxisAlignment.start,
                                          children: [
                                            Row(children: [Text("Balance")]),
                                            Text('72,150.00',
                                                style: TextStyle(
                                                    fontSize: 34,
                                                    fontWeight:
                                                        FontWeight.w900)),
                                          ],
                                        ),
                                      ),
                                    ),
                                  )
                                ],
                              ),
                            )
                          ],
                        ),
                      )
                    ],
                  ),
                  SizedBox(
                    height: 20,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    children: [
                      Container(
                        width: 180,
                        decoration: BoxDecoration(
                            color: Colors.white,
                            borderRadius:
                                BorderRadius.all(Radius.circular(10))),
                        child: Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Padding(
                                  padding: const EdgeInsets.all(8.0),
                                  child: Container(
                                    decoration: BoxDecoration(
                                      color: const Color.fromARGB(
                                          255, 233, 230, 230),
                                      borderRadius: BorderRadius.all(
                                        Radius.circular(100),
                                      ),
                                    ),
                                    child: Icon(Icons.arrow_downward_outlined),
                                  ),
                                ),
                                Text("Deposit",
                                    style: TextStyle(
                                        fontWeight: FontWeight.w500,
                                        color: Color.fromARGB(
                                            255, 201, 190, 190))),
                                Text(
                                  "30.308.91",
                                  style: TextStyle(
                                      color: const Color.fromARGB(
                                        255,
                                        202,
                                        77,
                                        224,
                                      ),
                                      fontSize: 25,
                                      fontWeight: FontWeight.w700),
                                ),
                              ]),
                        ),
                      ),
                      Container(
                        width: 180,
                        decoration: BoxDecoration(
                          color: Colors.white,
                          borderRadius: BorderRadius.all(
                            Radius.circular(10),
                          ),
                        ),
                        child: Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Padding(
                                  padding: const EdgeInsets.all(8.0),
                                  child: Container(
                                    decoration: BoxDecoration(
                                      color: Colors.black,
                                      borderRadius: BorderRadius.all(
                                        Radius.circular(100),
                                      ),
                                    ),
                                    child: Icon(
                                      Icons.arrow_upward_rounded,
                                      color: Colors.white,
                                      weight: 70,
                                    ),
                                  ),
                                ),
                                Text("Withdraw",
                                    style: TextStyle(
                                        fontWeight: FontWeight.w500,
                                        color:
                                            Color.fromARGB(255, 38, 35, 35))),
                                Text(
                                  "12.32.91",
                                  style: TextStyle(
                                      color: Colors.black,
                                      fontSize: 25,
                                      fontWeight: FontWeight.w700),
                                ),
                              ]),
                        ),
                      ),
                    ],
                  ),
                  SizedBox(
                    height: 20,
                  ),
                  Container(
                    width: MediaQuery.of(context).size.width,
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.all(Radius.circular(30)),
                        color: Color.fromARGB(255, 235, 231, 231)),
                    child: Padding(
                      padding: const EdgeInsets.all(18.0),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Text("In & Out",
                                  style: TextStyle(
                                      fontSize: 25,
                                      fontWeight: FontWeight.w900,
                                      color: Color.fromARGB(255, 22, 21, 21))),
                              DropdownButton(
                                  style: TextStyle(
                                      color:
                                          Color.fromARGB(255, 163, 157, 164)),
                                  value: _selected_value4,
                                  items: _ins
                                      .map(
                                        (e) => DropdownMenuItem(
                                          child: Text(
                                            e,
                                            style: TextStyle(
                                              color: const Color.fromARGB(
                                                255,
                                                202,
                                                77,
                                                224,
                                              ),
                                            ),
                                          ),
                                          value: e,
                                        ),
                                      )
                                      .toList(),
                                  onChanged: (val) {
                                    setState(() {
                                      _selected_value4 = val as String;
                                    });
                                  })
                            ],
                          ),
                          ListTile(
                            leading: Icon(
                              Icons.shopping_cart,
                              color: Colors.purple,
                            ),
                            title: DropdownButton(
                                value: _selected_value,
                                items: _productList
                                    .map((e) => DropdownMenuItem(
                                          child: Text(e,
                                              style: TextStyle(
                                                  fontSize: 20,
                                                  fontWeight: FontWeight.w900)),
                                          value: e,
                                        ))
                                    .toList(),
                                onChanged: (val) {
                                  setState(() {
                                    _selected_value = val as String;
                                  });
                                }),
                            trailing: Text("-23,403.99",
                                style: TextStyle(
                                    fontSize: 14, fontWeight: FontWeight.w600)),
                          ),
                          ListTile(
                            leading: Icon(
                              Icons.cases_sharp,
                              color: Colors.purple,
                            ),
                            title: DropdownButton(
                                value: _selected_value2,
                                items: _productList2
                                    .map((e) => DropdownMenuItem(
                                          child: Text(e,
                                              style: TextStyle(
                                                  fontSize: 20,
                                                  fontWeight: FontWeight.w900)),
                                          value: e,
                                        ))
                                    .toList(),
                                onChanged: (val) {
                                  setState(() {
                                    _selected_value2 = val as String;
                                  });
                                }),
                            trailing: Text("-403.99",
                                style: TextStyle(
                                    fontSize: 14, fontWeight: FontWeight.w600)),
                          ),
                          ListTile(
                            leading: Icon(
                              Icons.food_bank,
                              color: Colors.purple,
                            ),
                            title: DropdownButton(
                                value: _selected_value3,
                                items: _productList3
                                    .map((e) => DropdownMenuItem(
                                          child: Text(e,
                                              style: TextStyle(
                                                  fontSize: 20,
                                                  fontWeight: FontWeight.w900)),
                                          value: e,
                                        ))
                                    .toList(),
                                onChanged: (val) {
                                  setState(() {
                                    _selected_value3 = val as String;
                                  });
                                }),
                            trailing: Text("-103.99",
                                style: TextStyle(
                                    fontSize: 14, fontWeight: FontWeight.w600)),
                          ),
                        ],
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ),
        ),
        bottomNavigationBar: BottomAppBar(
          child:
              Row(mainAxisAlignment: MainAxisAlignment.spaceAround, children: [
            IconButton(
              icon: Icon(
                Icons.home,
              ),
              onPressed: () {
                Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => Dashboard(),
                    ));
              },
            ),
            IconButton(
              icon: Icon(Icons.analytics),
              onPressed: () {
                Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => StatisticsPage(),
                    ));
              },
            ),
            IconButton(
              icon: Icon(Icons.message),
              onPressed: () {
                Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => StatisticsPage(),
                    ));
              },
            ),
            IconButton(
              icon: Icon(Icons.verified_user),
              onPressed: () {
                Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => StatisticsPage(),
                    ));
              },
            ),
          ]),
        ));
  }
}
