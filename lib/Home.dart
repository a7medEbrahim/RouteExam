import 'package:flutter/material.dart';
import 'package:carousel_slider/carousel_slider.dart';

class Home extends StatelessWidget {
  static const String routeName = "HomePage";

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 0,
        backgroundColor: Colors.transparent,
        title: Row(
          children: [
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Image(
                image: AssetImage('assets/images/logo.png'),
                height: 45,
              ),
            ),
            Text(
              'Moody',
              style: TextStyle(color: Colors.black),
            ),
          ],
        ),
        actions: [
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 10),
            child: Icon(
              Icons.notifications_none,
              color: Colors.black,
            ),
          )
        ],
      ),
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 30, vertical: 15),
        child: Column(
          children: [
            Row(
              children: [
                Text(
                  'Hello,',
                  style: TextStyle(fontSize: 22, fontWeight: FontWeight.normal),
                ),
                Text(
                  ' Sara Rose',
                  style: TextStyle(fontSize: 22, fontWeight: FontWeight.bold),
                ),
              ],
            ),
            SizedBox(
              height: 10,
            ),
            Text(
              'How are you feeling today,',
              style: TextStyle(fontSize: 16, fontWeight: FontWeight.normal),
            ),
            SizedBox(
              height: 10,
            ),
            Row(mainAxisAlignment: MainAxisAlignment.spaceBetween, children: [
              Icon(
                Icons.emoji_emotions,
                size: 50,
                color: Colors.red,
              ),
              Icon(
                Icons.emoji_emotions,
                size: 50,
                color: Colors.blueGrey,
              ),
              Icon(
                Icons.emoji_emotions,
                size: 50,
                color: Colors.yellow,
              ),
              Icon(
                Icons.emoji_emotions,
                size: 50,
                color: Colors.green,
              ),
            ]),
            SizedBox(
              height: 50,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  'Feature',
                  style: TextStyle(fontSize: 22, fontWeight: FontWeight.bold),
                ),
                Text(
                  'see more >',
                  style: TextStyle(
                      fontSize: 15,
                      fontWeight: FontWeight.normal,
                      color: Colors.green),
                ),
              ],
            ),
            SizedBox(
              height: 20,
            ),
            CarouselSlider(
              options: CarouselOptions(
                  height: 180,
                  autoPlay: true,
                  // enlargeFactor: 1,
                  aspectRatio: 1,
                  enlargeCenterPage: true),
              items: [1, 2, 3].map((i) {
                return Builder(
                  builder: (BuildContext context) {
                    return Container(
                      color: Color.fromRGBO(236, 253, 243, 1),
                      child: Row(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Padding(
                            padding: const EdgeInsets.all(15),
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text(
                                  'Positive vibes',
                                  style: TextStyle(fontWeight: FontWeight.bold),
                                ),
                                SizedBox(
                                  height: 10,
                                ),
                                Text(
                                  'Boost your mood with\n'
                                  'positive vibes',
                                  style:
                                      TextStyle(fontWeight: FontWeight.normal),
                                ),
                                SizedBox(
                                  height: 25,
                                ),
                                Row(
                                  children: [
                                    Image(
                                        image: AssetImage(
                                            "assets/images/Button.png")),
                                    Text(
                                      '  10 mins',
                                      style: TextStyle(
                                          fontWeight: FontWeight.bold),
                                    )
                                  ],
                                )
                              ],
                            ),
                          ),
                          Image(
                            image: AssetImage(
                              'assets/images/Walking the Dog.png',
                            ),
                            height: 120,
                            width: 90,
                          )
                        ],
                      ),
                    );
                  },
                );
              }).toList(),
            ),
            SizedBox(
              height: 5,
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  CircleAvatar(radius: 5, backgroundColor: Colors.grey),
                  SizedBox(
                    width: 5,
                  ),
                  CircleAvatar(
                      radius: 5,
                      backgroundColor: Color.fromRGBO(217, 217, 217, 1)),
                  SizedBox(
                    width: 5,
                  ),
                  CircleAvatar(
                      radius: 5,
                      backgroundColor: Color.fromRGBO(217, 217, 217, 1)),
                ],
              ),
            ),
            SizedBox(
              height: 50,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  'Exercise',
                  style: TextStyle(fontSize: 22, fontWeight: FontWeight.bold),
                ),
                Text(
                  'see more >',
                  style: TextStyle(
                      fontSize: 15,
                      fontWeight: FontWeight.normal,
                      color: Colors.green),
                ),
              ],
            ),
            SizedBox(
              height: 20,
            ),
            Column(
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Container(
                      color: Color.fromRGBO(249, 245, 255, 1),
                      child: Padding(
                        padding: const EdgeInsets.all(16.0),
                        child: Row(
                          children: [
                            Image(
                              image: AssetImage("assets/images/Group.png"),
                            ),
                            SizedBox(
                              width: 10,
                            ),
                            Text(
                              'Relaxation',
                              style: TextStyle(
                                  fontSize: 15, fontWeight: FontWeight.bold),
                            ),
                          ],
                        ),
                      ),
                    ),
                    Container(
                      color: Color.fromRGBO(249, 245, 255, 1),
                      child: Padding(
                        padding: const EdgeInsets.all(16.0),
                        child: Row(
                          children: [
                            Image(
                              image: AssetImage("assets/images/Group.png"),
                            ),
                            SizedBox(
                              width: 10,
                            ),
                            Text(
                              'Meditation',
                              style: TextStyle(
                                  fontSize: 15, fontWeight: FontWeight.bold),
                            ),
                          ],
                        ),
                      ),
                    ),
                  ],
                ),
                SizedBox(
                  height: 15,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Container(
                      color: Color.fromRGBO(249, 245, 255, 1),
                      child: Padding(
                        padding: const EdgeInsets.all(16.0),
                        child: Row(
                          children: [
                            Image(
                              image: AssetImage("assets/images/Group.png"),
                            ),
                            SizedBox(
                              width: 10,
                            ),
                            Text(
                              'Beathing',
                              style: TextStyle(
                                  fontSize: 15, fontWeight: FontWeight.bold),
                            ),
                          ],
                        ),
                      ),
                    ),
                    Container(
                      color: Color.fromRGBO(249, 245, 255, 1),
                      child: Padding(
                        padding: const EdgeInsets.all(16.0),
                        child: Row(
                          children: [
                            Image(
                              image: AssetImage("assets/images/Group.png"),
                            ),
                            SizedBox(
                              width: 10,
                            ),
                            Text(
                              'Yoga',
                              style: TextStyle(
                                  fontSize: 15, fontWeight: FontWeight.bold),
                            ),
                          ],
                        ),
                      ),
                    ),
                  ],
                ),
              ],
            ),
          ],
        ),
      ),
      bottomNavigationBar: BottomNavigationBar(
        currentIndex: 0,
        onTap: (value) {},
        selectedItemColor: Colors.green,
        unselectedItemColor: Colors.grey,
        items: [
          BottomNavigationBarItem(
            label: ".",
            icon: Icon(Icons.home),
          ),
          BottomNavigationBarItem(
            label: ".",
            icon: Icon(Icons.grid_view),
          ),
          BottomNavigationBarItem(
            label: ".",
            icon: Icon(Icons.calendar_today_outlined),
          ),
          BottomNavigationBarItem(
            label: ".",
            icon: Icon(Icons.person),
          ),
        ],
      ),
    );
  }
}
