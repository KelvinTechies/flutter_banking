import 'package:banking/Pages/register.dart';
import 'package:flutter/material.dart';

class LoginPage extends StatefulWidget {
  const LoginPage({super.key});

  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Container(
          child: Column(
            children: [
              Column(
                children: [
                  Container(
                    width: 200,
                    height: 400,
                    child: CircleAvatar(
                      backgroundImage: AssetImage(
                          "assets/images/bave-pictures-fl7bASYZgXo-unsplash-removebg-preview.png"),
                    ),
                  ),
                  Text(
                    "Welcome User",
                    style: TextStyle(fontSize: 20, fontWeight: FontWeight.w500),
                  ),
                ],
              ),
              Padding(
                padding: const EdgeInsets.all(20.0),
                child: Container(
                  child: Column(
                    children: [
                      Text(
                        "Login",
                        style: TextStyle(
                            fontWeight: FontWeight.w900,
                            fontSize: 40,
                            color: Colors.purpleAccent),
                      ),
                      SizedBox(
                        height: 20,
                      ),
                      TextFormField(
                        decoration: InputDecoration(
                            prefixIcon: Icon(Icons.email),
                            hintText: "Enter Email Address",
                            border: OutlineInputBorder(
                                borderSide: BorderSide(width: 10),
                                borderRadius: BorderRadius.circular(15))),
                      ),
                      SizedBox(
                        height: 20,
                      ),
                      TextField(
                        decoration: InputDecoration(
                            prefixIcon: Icon(Icons.lock),
                            hintText: "Enter Password",
                            border: OutlineInputBorder(
                                borderSide: BorderSide(width: 10),
                                borderRadius: BorderRadius.circular(15))),
                      ),
                      SizedBox(
                        height: 15,
                      ),
                      ElevatedButton(
                          style: ButtonStyle(
                              backgroundColor: MaterialStatePropertyAll(
                                  Color.fromARGB(255, 97, 40, 130))),
                          onPressed: () {},
                          child: Padding(
                            padding: const EdgeInsets.all(8.0),
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                Text(
                                  "Login",
                                  style: TextStyle(
                                      color: Colors.white,
                                      fontWeight: FontWeight.w800,
                                      fontSize: 30),
                                ),
                                Icon(
                                  Icons.chevron_right,
                                  size: 40,
                                  color: Colors.white,
                                )
                              ],
                            ),
                          )),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Text("Are You New?"),
                          TextButton(
                              onPressed: () {
                                Navigator.push(context, MaterialPageRoute(
                                  builder: (context) {
                                    return RegisterPage();
                                  },
                                ));
                              },
                              child: Text("Create Now")),
                        ],
                      )
                    ],
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
