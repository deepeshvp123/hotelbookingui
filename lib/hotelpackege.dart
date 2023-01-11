import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:hotelbookingui/popularhotel.dart';

class packages extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      // padding: EdgeInsets.only(top: 10, left: 15, right: 15),
      // color: Colors.black54,
      // height: 200,
      width: 200,
      child: SingleChildScrollView(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            hotelpack(
                imagee: "assets/image/images.jpg",
                text1: "crown plaza",
                text2: "a five star hotelin kochi",
                text3: "\$180/night"),
            hotelpack(
                imagee: "assets/image/bed2.jpg",
                text1: "crown plaza",
                text2: "a five star hotelin kochi",
                text3: "\$180/night"),
            hotelpack(
                imagee: "assets/image/bed3.jpg",
                text1: "crown plaza",
                text2: "a five star hotelin kochi",
                text3: "\$180/night"),
            hotelpack(
                imagee: "assets/image/bed4.jpg",
                text1: "crown plaza",
                text2: "a five star hotelin kochi",
                text3: "\$180/night"),
          ],
        ),
      ),
    );
  }
}

class hotelpack extends StatelessWidget {
  final String imagee;
  final String text1;
  final String text2;
  final String text3;

  hotelpack({
    required this.imagee,
    required this.text1,
    required this.text2,
    required this.text3,
  });
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(top: 15, left: 5, right: 5),
      child: Container(
        // padding: EdgeInsets.only(top: 10),
        decoration: BoxDecoration(
            color: Colors.white,
            borderRadius: BorderRadius.circular(10),
            boxShadow: [
              BoxShadow(color: Colors.grey, blurRadius: 8, offset: Offset(1, 2))
            ]),
        child: Stack(children: [
          Row(
            children: [
              Container(
                //padding: EdgeInsets.only(top: 10),
                height: 120,
                width: 120,
                decoration: BoxDecoration(
                  //borderRadius: BorderRadius.circular(10),
                  image: DecorationImage(
                      image: AssetImage(imagee), fit: BoxFit.fill),
                ),
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Padding(
                    padding: const EdgeInsets.only(left: 10),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.start,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          text1,
                          style: TextStyle(fontSize: 15, color: Colors.black),
                        ),
                        SizedBox(
                          height: 5,
                        ),
                        Text(
                          text2,
                          style: TextStyle(fontSize: 12, color: Colors.grey),
                        ),
                        SizedBox(
                          height: 5,
                        ),
                        Text(
                          text3,
                          style: TextStyle(
                              fontSize: 15,
                              color: Color.fromARGB(255, 9, 110, 192)),
                        ),
                        SizedBox(
                          height: 5,
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.start,
                          children: [
                            Wrap(
                                spacing: 5,
                                alignment: WrapAlignment.center,
                                direction: Axis.horizontal,
                                children: [
                                  Icon(
                                    FontAwesomeIcons.car,
                                    color: Colors.blue,
                                    size: 15,
                                  ),
                                  Icon(
                                    FontAwesomeIcons.radio,
                                    color: Colors.blue,
                                    size: 15,
                                  ),
                                  Icon(
                                    FontAwesomeIcons.wineGlass,
                                    color: Colors.blue,
                                    size: 15,
                                  ),
                                  Icon(
                                    FontAwesomeIcons.wifi,
                                    color: Colors.blue,
                                    size: 15,
                                  ),
                                ])
                          ],
                        ),
                      ],
                    ),
                  ),
                ],
              )
            ],
          ),
          Positioned(
            top: 45,
            right: 0,
            child: SizedBox(
              height: 40,
              width: 80,
              child: ElevatedButton(
                onPressed: () {},
                child: Text(
                  "BOOK",
                  style: TextStyle(color: Colors.white),
                ),
                style: ElevatedButton.styleFrom(
                    backgroundColor: Colors.blue,
                    shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.only(
                      topLeft: Radius.circular(10),
                      bottomLeft: Radius.circular(10),
                    ))),
              ),
            ),
          )
        ]),
      ),
    );
  }
}
