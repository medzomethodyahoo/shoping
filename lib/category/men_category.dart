// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables

import 'package:flutter/material.dart';

import '../utilities/categ_list.dart';

// List<String> img = [
//   'images/men/men0.jpg',
//   'images/men/men1.jpg',
//   'images/men/men2.jpg',
//   'images/men/men3.jpg',
//   'images/men/men4.jpg',
//   'images/men/men5.jpg',
//   'images/men/men6.jpg',
//   'images/men/men7.jpg',
// ];

// List<String> label = [
//   'jean',
//   'Tshirt',
//   'Pant',
//   'jacket',
// ];

class MenCategory extends StatelessWidget {
  const MenCategory({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Padding(
          padding: const EdgeInsets.all(35.0),
          child: Text(
            'Men',
            style: TextStyle(
                fontSize: 35, fontWeight: FontWeight.bold, letterSpacing: 1.5),
          ),
        ),
        SizedBox(
          height: MediaQuery.of(context).size.height * .60,
          child: GridView.count(
            mainAxisSpacing: 75,
            crossAxisSpacing: 15,
            crossAxisCount: 3,
            children: List.generate(men.length, (index) {
              return Column(
                children: [
                  SizedBox(
                    height: 70,
                    width: 70,
                    child: Image(
                      image: AssetImage('images/men/men$index.jpg'),
                    ),
                  ),
                  Text(men[index]),
                ],
              );
            }),
          ),
        ),
      ],
    );
  }
}
