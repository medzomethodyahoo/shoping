// import 'package:flutter/material.dart';
// import 'package:shopping/category/men_category.dart';
// import 'package:shopping/widget/fakesearch.dart';

// List<ItemsData> items = [
//   ItemsData(
//     name: 'Men',
//   ),
//   ItemsData(
//     name: 'Woman',
//   ),
//   ItemsData(
//     name: 'Electronics',
//   ),
//   ItemsData(
//     name: 'Accesories',
//   ),
//   ItemsData(
//     name: 'Sport',
//   ),
//   ItemsData(
//     name: 'Shoes',
//   ),
//   ItemsData(
//     name: 'Kids',
//   ),
//   ItemsData(
//     name: 'Beauty',
//   ),
// ];

// class Categories extends StatefulWidget {
//   const Categories({super.key});

//   @override
//   State<Categories> createState() => _CategoriesState();
// }

// class _CategoriesState extends State<Categories> {
//   final PageController _pageController = PageController();
//   @override
//   Widget build(BuildContext context) {
//     var size = MediaQuery.of(context).size;

//     return Scaffold(
//       appBar: AppBar(
//         elevation: 0,
//         backgroundColor: Colors.white,
//         title: const FakeSearch(),
//       ),
//     );
//   }

//   Widget leftButton(size) {
//     return SizedBox(
//       height: size.height * .8,
//       width: size.width * .2,
//       child: ListView.builder(
//           itemCount: items.length,
//           itemBuilder: (context, index) {
//             return GestureDetector(
//               onTap: (() {
//                 _pageController.animateToPage(index,
//                     duration: const Duration(microseconds: 1000),
//                     curve: Curves.decelerate);
//               }),
//               child: Container(
//                 height: 100,
//                 color: items[index].isSelected == true
//                     ? Colors.red.shade300
//                     : Colors.white,
//                 child: Center(
//                   child: Text(items[index].name),
//                 ),
//               ),
//             );
//           }),
//     );
//   }

//   Widget rightButton(size) {
//     return Container(
//       color: Colors.red.shade300,
//       height: size.height * .8,
//       width: size.width * .8,
//       // child: PageView(
//       //   controller: _pageController,
//       //   scrollDirection: Axis.vertical,
//       //   onPageChanged: (value) {
//       //     for (var element in items) {
//       //       element.isSelected = false;
//       //     }
//       //     setState(
//       //       () {
//       //         items[value].isSelected = true;
//       //       },
//       //     );
//       //   },
//       //   children: const [
//       //     MenCategory(),
//       //     Center(
//       //       child: Text('Woman Categories'),
//       //     ),
//       //     Center(
//       //       child: Text('Elecronics Categories'),
//       //     ),
//       //     Center(
//       //       child: Text('Accesories Categories'),
//       //     ),
//       //     Center(
//       //       child: Text('Sport Categories'),
//       //     ),
//       //     Center(
//       //       child: Text('Shoes Categories'),
//       //     ),
//       //     Center(
//       //       child: Text('ShoesCategories'),
//       //     ),
//       //     Center(
//       //       child: Text('Kids Categories'),
//       //     ),
//       //   ],
//       // ),
//     );
//   }
// }

// class ItemsData {
//   String name;
//   bool isSelected;

//   ItemsData({required this.name, this.isSelected = false});
// }
