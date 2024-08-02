import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:ui_practice/s3coffee_details.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Container(
        height: MediaQuery.of(context).size.height,
        child: Column(
          children: [
            customAppBarDesign(),
            headerSection(),
            StarBucksCoffeeDeatils(),
          ],
        ),
      ),
    );
  }

  Widget headerSection() {
    return Padding(
      padding: const EdgeInsets.only(top: 40, left: 20, bottom: 40),
      child: Container(
        child: Row(
          children: [
            Container(
              height: 120,
              width: 120,
              color: Colors.yellow,
            ),
            Container(
              margin: EdgeInsets.only(left: 10),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Container(
                    margin: EdgeInsets.only(left: 10),
                    child: Text(
                      "Size",
                      style: TextStyle(
                          color: Color.fromARGB(255, 48, 114, 51),
                          fontSize: 30,
                          fontWeight: FontWeight.bold),
                    ),
                  ),
                  Row(
                    children: [
                      Container(
                        margin: EdgeInsets.all(10),
                        height: 60,
                        width: 60,
                        decoration: BoxDecoration(
                            border: Border.all(color: Colors.black),
                            borderRadius: BorderRadius.circular(100)),
                        child: Center(
                          child: Text("S",
                              style: TextStyle(
                                  fontWeight: FontWeight.bold,
                                  fontSize: 30,
                                  color: Color.fromARGB(255, 48, 114, 51))),
                        ),
                      ),
                      Container(
                        margin: EdgeInsets.all(10),
                        height: 60,
                        width: 60,
                        decoration: BoxDecoration(
                            border: Border.all(color: Colors.black),
                            borderRadius: BorderRadius.circular(100)),
                        child: Center(
                          child: Text("M",
                              style: TextStyle(
                                  fontWeight: FontWeight.bold,
                                  fontSize: 30,
                                  color: Color.fromARGB(255, 48, 114, 51))),
                        ),
                      ),
                      Container(
                        margin: EdgeInsets.all(10),
                        height: 60,
                        width: 60,
                        decoration: BoxDecoration(
                            border: Border.all(color: Colors.black),
                            borderRadius: BorderRadius.circular(100)),
                        child: Center(
                          child: Text(
                            "L",
                            style: TextStyle(
                                fontWeight: FontWeight.bold,
                                fontSize: 30,
                                color: Color.fromARGB(255, 48, 114, 51)),
                          ),
                        ),
                      ),
                    ],
                  )
                ],
              ),
            )
          ],
        ),
      ),
    );
  }

  Widget customAppBarDesign() {
    return Padding(
      padding: const EdgeInsets.only(top: 70, left: 20),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Container(
            height: 30,
            width: 70,
            decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(50),
                border: Border.all(color: Colors.blueGrey, width: 3)),
            child: Center(
                child: Row(
              children: [
                Icon(
                  Icons.navigate_before,
                  color: Colors.blueGrey,
                ),
                Text(
                  "Back",
                  style: TextStyle(
                      fontWeight: FontWeight.bold, color: Colors.blueGrey),
                ),
              ],
            )),
          ),
          Padding(
            padding: const EdgeInsets.only(right: 20),
            child: Icon(
              Icons.menu,
              color: Colors.blueGrey,
              size: 30,
            ),
          )
        ],
      ),
    );
  }
}
