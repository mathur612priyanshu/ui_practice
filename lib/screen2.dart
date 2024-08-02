import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

class Screen2 extends StatefulWidget {
  const Screen2({super.key});

  @override
  State<Screen2> createState() => _Screen2State();
}

class _Screen2State extends State<Screen2> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: Icon(
          Icons.sort,
          size: 27,
        ),
        actions: [
          Icon(
            Icons.search,
            size: 27,
          )
        ],
      ),
      body: Container(
        margin: EdgeInsets.symmetric(horizontal: 10),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              "Rocking Week",
              style: TextStyle(
                  fontSize: 38,
                  color: Colors.orangeAccent,
                  fontWeight: FontWeight.bold),
            ),
            Text(
              "2024 top songs to hang on",
              style: TextStyle(color: Colors.black54, fontSize: 17),
            ),
            SizedBox(
              height: 13,
            ),
            Row(
              children: [
                Text(
                  "Explore",
                  style: TextStyle(fontWeight: FontWeight.bold, fontSize: 30),
                ),
                Expanded(child: SizedBox()),
                Icon(
                  Icons.local_fire_department,
                  color: Colors.black87,
                ),
              ],
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 8),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text("Recommended",
                      style:
                          TextStyle(color: Colors.orangeAccent, fontSize: 17)),
                  Text("show 2024",
                      style: TextStyle(color: Colors.black54, fontSize: 17)),
                  Text("New Songs",
                      style: TextStyle(color: Colors.black54, fontSize: 17))
                ],
              ),
            ),
            SingleChildScrollView(
              scrollDirection: Axis.horizontal,
              child: Row(
                children: [
                  Column(
                    children: [
                      Card(
                          shadowColor: Colors.black45,
                          elevation: 50,
                          child: Container(
                            height: 250,
                            width: 200,
                            decoration: BoxDecoration(
                                borderRadius:
                                    BorderRadius.all(Radius.circular(20)),
                                image: DecorationImage(
                                    image: AssetImage("images/arijit.jpg"),
                                    fit: BoxFit.cover)),
                          )),
                      Text(
                        "Arijit Singh",
                        style: TextStyle(
                            fontWeight: FontWeight.bold, fontSize: 20),
                      ),
                      Text(
                        "500+ songs",
                        style: TextStyle(color: Colors.black45, fontSize: 17),
                      )
                    ],
                  ),
                  Column(
                    children: [
                      Card(
                          shadowColor: Colors.black45,
                          elevation: 20,
                          child: Container(
                            height: 250,
                            width: 200,
                            decoration: BoxDecoration(
                                borderRadius:
                                    BorderRadius.all(Radius.circular(20)),
                                image: DecorationImage(
                                    image: AssetImage("images/shaan.jpg"),
                                    fit: BoxFit.cover)),
                          )),
                      Text(
                        "Shaan",
                        style: TextStyle(
                            fontWeight: FontWeight.bold, fontSize: 20),
                      ),
                      Text(
                        "600+ songs",
                        style: TextStyle(color: Colors.black45, fontSize: 17),
                      )
                    ],
                  ),
                  Column(
                    children: [
                      Card(
                          shadowColor: Colors.black45,
                          elevation: 20,
                          child: Container(
                            height: 250,
                            width: 200,
                            decoration: BoxDecoration(
                                borderRadius:
                                    BorderRadius.all(Radius.circular(20)),
                                image: DecorationImage(
                                    image: AssetImage("images/adnan.jpg"),
                                    fit: BoxFit.cover)),
                          )),
                      Text(
                        "Adnan Saami",
                        style: TextStyle(
                            fontWeight: FontWeight.bold, fontSize: 20),
                      ),
                      Text(
                        "300+ songs",
                        style: TextStyle(color: Colors.black45, fontSize: 17),
                      )
                    ],
                  )
                ],
              ),
            ),
            SizedBox(
              height: 10,
            ),
            Row(
              children: [
                Text(
                  "Top songs",
                  style: TextStyle(fontWeight: FontWeight.bold, fontSize: 30),
                ),
                Container(
                    margin: EdgeInsets.symmetric(horizontal: 10),
                    child: Icon(
                      Icons.music_note,
                      size: 30,
                      color: Colors.orangeAccent,
                    )),
              ],
            ),
            Container(
              margin: EdgeInsets.symmetric(vertical: 10),
              height: 230,
              width: MediaQuery.of(context).size.width,
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.all(Radius.circular(20)),
                  image: DecorationImage(
                      image: AssetImage("images/ar.jpg"), fit: BoxFit.cover)),
            )
          ],
        ),
      ),
    );
  }
}
