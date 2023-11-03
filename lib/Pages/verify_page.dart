import 'package:banking/Pages/register.dart';
import 'package:flutter/material.dart';

class VerifyPage extends StatefulWidget {
  const VerifyPage({super.key});

  @override
  State<VerifyPage> createState() => _VerifyPageState();
}

class _VerifyPageState extends State<VerifyPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: SingleChildScrollView(
          child: Container(
              /*  color: Color.fromARGB(255, 97, 40, 130),
              // height: 400,
              width: MediaQuery.of(context).size.width, */
              child: Container(
            child: Column(
              children: [
                /* SizedBox(
                  height: 45,
                ), */
                /* Stack(
                  children: [ */
                Container(
                    color: Color.fromARGB(255, 97, 40, 130),
                    height: 440,
                    width: MediaQuery.of(context).size.width,
                    child: Column(
                      children: [
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                          children: [
                            SizedBox(
                              height: 200,
                            ),
                            CircleAvatar(
                                child: IconButton(
                              icon: Icon(Icons.chevron_left_sharp),
                              onPressed: () {
                                Navigator.push(context, MaterialPageRoute(
                                  builder: (context) {
                                    return RegisterPage();
                                  },
                                ));
                              },
                            )),
                            Text(
                              "Confirmation",
                              style: TextStyle(
                                  color: Colors.white,
                                  fontSize: 30,
                                  fontWeight: FontWeight.w800),
                            ),
                            SizedBox(
                              height: 20,
                            ),
                          ],
                        ),
                        SizedBox(
                          height: 20,
                        ),
                        Container(
                          width: 200,
                          height: 220,
                          decoration: BoxDecoration(
                              image: DecorationImage(
                                  fit: BoxFit.cover,
                                  image: AssetImage(
                                      "assets/images/bave-pictures-fl7bASYZgXo-unsplash-removebg-preview.png"))),
                          /*  child: Center(
                            child: Image.asset(
                                height: 200,
                                "assets/images/bave-pictures-fl7bASYZgXo-unsplash-removebg-preview.png"),
                          ), */
                        ),
                      ],
                    )),

                /*  ],
                ), */
                SizedBox(
                  height: 20,
                ),
                Container(
                  width: 300,
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    children: [
                      Container(
                        width: 60,
                        height: 40,
                        decoration: BoxDecoration(
                            color: const Color.fromARGB(255, 231, 231, 231),
                            borderRadius: BorderRadius.circular(10)),
                      ),
                      Container(
                        width: 60,
                        height: 40,
                        decoration: BoxDecoration(
                            color: const Color.fromARGB(255, 231, 231, 231),
                            borderRadius: BorderRadius.circular(10)),
                      ),
                      Container(
                        width: 60,
                        height: 40,
                        decoration: BoxDecoration(
                            color: const Color.fromARGB(255, 231, 231, 231),
                            borderRadius: BorderRadius.circular(10)),
                      ),
                      Container(
                        width: 60,
                        height: 40,
                        decoration: BoxDecoration(
                            color: const Color.fromARGB(255, 231, 231, 231),
                            borderRadius: BorderRadius.circular(10)),
                      ),
                    ],
                  ),
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text("Didn't Get The O.T.P?,"),
                    TextButton(onPressed: () {}, child: Text("Click Here"))
                  ],
                ),
                ElevatedButton(
                    style: ButtonStyle(
                        fixedSize: MaterialStatePropertyAll(Size(260.0, 50)),
                        backgroundColor: MaterialStatePropertyAll(
                            Color.fromARGB(255, 97, 40, 130))),
                    onPressed: () {},
                    child: Text(
                      "Verify",
                      style: TextStyle(
                          fontSize: 20,
                          color: Colors.white,
                          fontWeight: FontWeight.w900),
                    ))
              ],
            ),
          )),
        ),
      ),
    );
  }
}
