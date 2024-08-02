import 'package:flutter/material.dart';

class Screen1 extends StatefulWidget {
  const Screen1({super.key});

  @override
  State<Screen1> createState() => _Screen1State();
}

class _Screen1State extends State<Screen1> {
  @override
  Widget build(BuildContext context) {
    bool status = false;
    String name = "White Snow Valley";
    String city = "Nanital";
    String state = "Uttrakhand";
    String rating = "4.8(3.2k)";
    String distance = "3000 Km";
    String restaurants = "108 avail";
    String text =
        "The Sonwy Mountains experiences large natural snowfalls every winter, normally during June, July, August ans early September with the snow cover melting by late spring. It is consider to be one of the center of the Australian ski industry during the winter months.";

    return Scaffold(
        appBar: AppBar(
          title: Text(
            "Traveller Guide",
            style: TextStyle(
              color: Colors.white,
              fontWeight: FontWeight.bold,
              fontSize: 30,
            ),
          ),
          backgroundColor: Colors.orangeAccent,
          centerTitle: true,
        ),
        body: ListView(
          children: [
            Container(
              height: 300,
              width: MediaQuery.of(context).size.width,
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.only(
                      bottomLeft: Radius.circular(15),
                      bottomRight: Radius.circular(15)),
                  image: DecorationImage(
                      image: AssetImage('images/mountain.jpg'),
                      fit: BoxFit.cover)),
            ),
            Container(
              padding: EdgeInsets.only(top: 10),
              margin: EdgeInsets.symmetric(horizontal: 10),
              child: Row(
                children: [
                  Container(
                    child: Text(
                      name,
                      style:
                          TextStyle(fontWeight: FontWeight.bold, fontSize: 30),
                    ),
                  ),
                  Expanded(child: SizedBox()),
                  IconButton(
                      onPressed: () {
                        status = true;
                      },
                      icon: status == false
                          ? Icon(
                              Icons.favorite_border_outlined,
                              size: 30,
                              color: Colors.red,
                            )
                          : Icon(
                              Icons.favorite_rounded,
                              size: 30,
                              color: Colors.red,
                            )),
                  // Icon(Icons.favorite_rounded)
                ],
              ),
            ),
            Container(
              margin: EdgeInsets.symmetric(horizontal: 10),
              child: Row(
                children: [
                  Icon(
                    Icons.location_on,
                    color: Colors.orangeAccent,
                  ),
                  Text(
                    city,
                    style: TextStyle(fontSize: 20, color: Colors.black54),
                  ),
                  Text(
                    ", ",
                    style: TextStyle(fontSize: 20, color: Colors.black54),
                  ),
                  Text(
                    state,
                    style: TextStyle(fontSize: 20, color: Colors.black54),
                  )
                ],
              ),
            ),
            SizedBox(
              height: 15,
            ),
            Container(
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  Column(
                    children: [
                      Container(
                        margin: EdgeInsets.only(bottom: 8),
                        child: Material(
                          borderRadius: BorderRadius.all(Radius.circular(100)),
                          elevation: 5.0,
                          child: Padding(
                            padding: const EdgeInsets.all(8.0),
                            child: Icon(
                              Icons.star_border_outlined,
                              color: Colors.orangeAccent,
                            ),
                          ),
                        ),
                      ),
                      Text(
                        "Rating",
                        style: TextStyle(color: Colors.black54, fontSize: 15),
                      ),
                      Text(
                        rating,
                        style: TextStyle(fontSize: 20, color: Colors.black),
                      )
                    ],
                  ),
                  Column(
                    children: [
                      Container(
                        margin: EdgeInsets.only(bottom: 8),
                        child: Material(
                          borderRadius: BorderRadius.all(Radius.circular(100)),
                          elevation: 5.0,
                          child: Padding(
                            padding: const EdgeInsets.all(8.0),
                            child: Icon(
                              Icons.alt_route_outlined,
                              color: Colors.green,
                            ),
                          ),
                        ),
                      ),
                      Text(
                        "Distance",
                        style: TextStyle(color: Colors.black54, fontSize: 15),
                      ),
                      Text(
                        distance,
                        style: TextStyle(fontSize: 20, color: Colors.black),
                      )
                    ],
                  ),
                  Column(
                    children: [
                      Container(
                        margin: EdgeInsets.only(bottom: 8),
                        child: Material(
                          borderRadius: BorderRadius.all(Radius.circular(100)),
                          elevation: 5.0,
                          child: Padding(
                            padding: const EdgeInsets.all(7.0),
                            child: Icon(
                              Icons.food_bank_rounded,
                              color: Colors.orangeAccent,
                            ),
                          ),
                        ),
                      ),
                      Text(
                        "Rating",
                        style: TextStyle(color: Colors.black54, fontSize: 15),
                      ),
                      Text(
                        rating,
                        style: TextStyle(fontSize: 20, color: Colors.black),
                      )
                    ],
                  ),
                ],
              ),
            ),
            Container(
              margin: EdgeInsets.all(10),
              child: Text(
                text,
                style: TextStyle(fontSize: 20),
              ),
            ),
            InkWell(
              child: Container(
                margin: EdgeInsets.symmetric(horizontal: 8),
                height: 50,
                width: MediaQuery.of(context).size.width,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.all(Radius.circular(10)),
                  color: Colors.black,
                ),
                child: Center(
                  child: Text(
                    "Book my trip",
                    style: TextStyle(color: Colors.white, fontSize: 22),
                  ),
                ),
              ),
            )
            // ElevatedButton(
            //     onPressed: () {},
            //     style: ElevatedButton.styleFrom(
            //       backgroundColor: Colors.black,
            //     ),
            //     child: Container(
            //       height: 50,
            //       child: Center(
            //         child: Text(
            //           "Book my trip",
            //           style: TextStyle(color: Colors.white, fontSize: 22),
            //         ),
            //       ),
            //     ))
          ],
        ));
  }
}
