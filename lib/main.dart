import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:hotelbookingui/hotelpackege.dart';
import 'package:hotelbookingui/popularhotel.dart';

void main(List<String> args) {
  runApp(MaterialApp(
    home: hotelbooking(),
    debugShowCheckedModeBanner: false,
  ));
}

class hotelbooking extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ListView(
        children: [
          AppBar(
              elevation: 0,
              backgroundColor: Colors.white,
              title: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Column(
                    mainAxisAlignment: MainAxisAlignment.start,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        "Hello@ Arjun",
                        style: TextStyle(
                          fontSize: 13,
                          color: Colors.grey,
                        ),
                      ),
                      SizedBox(
                        height: 5,
                      ),
                      Text(
                        "Find Your Favorite Hotel",
                        style: TextStyle(
                            fontSize: 15,
                            color: Colors.black,
                            fontWeight: FontWeight.bold),
                      ),
                    ],
                  ),
                  CircleAvatar(
                    backgroundImage: AssetImage(
                      "assets/image/images.jpg",
                    ),
                    radius: 16,
                  )
                ],
              )),
          SizedBox(
            height: 15,
          ),
          Padding(
            padding: const EdgeInsets.only(left: 20, right: 20),
            child: Container(
                decoration: BoxDecoration(
                  boxShadow: [
                    BoxShadow(
                      color: Colors.grey.shade400,
                      blurRadius: 10,
                      offset: Offset(1, 3),
                    )
                  ],
                  color: Colors.white,
                  borderRadius: BorderRadius.circular(15),
                  // color: Colors.grey.shade300,
                ),
                child: TextField(
                  decoration: InputDecoration(
                    fillColor: Colors.white,
                    border: InputBorder.none,
                    hintText: 'Search for hotel',
                    prefixIcon: Icon(
                      Icons.search,
                      color: Colors.black,
                    ),
                    disabledBorder: OutlineInputBorder(
                      borderSide: BorderSide(color: Colors.white, width: .2),
                      borderRadius: BorderRadius.circular(10),
                    ),
                  ),
                )),
          ),
          SizedBox(
            height: 20,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              Text("Popular hotel"),
            ],
          ),
          SizedBox(
            height: 10,
          ),
          popular(),
          SizedBox(
            height: 15,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Padding(
                padding: const EdgeInsets.only(left: 15),
                child: Text(
                  "Hotel Packeges",
                  style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(right: 15),
                child: Text(
                  " View all",
                  style: TextStyle(color: Colors.blue),
                ),
              )
            ],
          ),
          SizedBox(
            height: 15,
          ),
          packages(),
        ],
      ),
      bottomNavigationBar: BottomNavigationBar(
          backgroundColor: Colors.white,
          selectedItemColor: Color.fromARGB(255, 11, 73, 13),
          unselectedItemColor: Colors.black,
          currentIndex: 0,
          items: [
            BottomNavigationBarItem(icon: Icon(Icons.home), label: 'home'),
            BottomNavigationBarItem(icon: Icon(Icons.search), label: "explore"),
            BottomNavigationBarItem(icon: Icon(Icons.person), label: "profile")
          ]),
    );
  }
}
