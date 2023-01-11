import 'package:flutter/material.dart';

// void main(List<String> args) {
//   runApp(MaterialApp(
//     home: popular(),
//   ));
// }

class popular extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 200,
      child: SingleChildScrollView(
        scrollDirection: Axis.horizontal,
        child: Row(
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            pph(
                img: "assets/image/images.jpg",
                textt: "Crown Plaza",
                text1: "A Five Star Hotel In Kochi",
                text2: "\$180/night",
                text3: "4.5"),
            pph(
                img: "assets/image/bed2.jpg",
                textt: "Crown Plaza",
                text1: "A Five Star Hotel In Kochi",
                text2: "\$180/night",
                text3: "4.5"),
            pph(
                img: "assets/image/bed3.jpg",
                textt: "Crown Plaza",
                text1: "A Five Star Hotel In Kochi",
                text2: "\$180/night",
                text3: "4.5"),
            pph(
                img: "assets/image/bed4.jpg",
                textt: "Crown Plaza",
                text1: "A Five Star Hotel In Kochi",
                text2: "\$180/night",
                text3: "4.5"),
          ],
        ),
      ),
    );
  }
}

class pph extends StatelessWidget {
  final String img;
  final String textt;
  final String text1;
  final String text2;
  final String text3;

  pph({
    required this.img,
    required this.textt,
    required this.text1,
    required this.text2,
    required this.text3,
  });
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(left: 10),
      child: Container(
        decoration: BoxDecoration(
            color: Colors.white,
            borderRadius: BorderRadius.circular(10),
            boxShadow: [
              BoxShadow(color: Colors.grey, blurRadius: 8, offset: Offset(1, 2))
            ]),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Container(
              height: 100,
              width: 155,
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(10),
                  image: DecorationImage(
                      image: AssetImage(img), fit: BoxFit.fill)),
            ),
            Padding(
              padding: const EdgeInsets.only(top: 12, left: 5),
              child: Text(
                textt,
                style: TextStyle(fontSize: 15, fontWeight: FontWeight.bold),
              ),
            ),
            SizedBox(
              height: 5,
            ),
            Padding(
              padding: const EdgeInsets.only(left: 5),
              child: Text(
                text1,
                style: TextStyle(color: Colors.grey, fontSize: 10),
              ),
            ),
            SizedBox(
              height: 6,
            ),
            Row(
              children: [
                Text(
                  text2,
                  style: TextStyle(color: Colors.blue.shade300, fontSize: 12),
                ),
                Padding(
                    padding: EdgeInsets.only(
                  left: 70,
                )),
                Row(
                  // mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    Text(
                      text3,
                      style:
                          TextStyle(color: Colors.blue.shade300, fontSize: 12),
                    ),
                    Icon(
                      Icons.star,
                      color: Colors.blue,
                      size: 10,
                    )
                  ],
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
