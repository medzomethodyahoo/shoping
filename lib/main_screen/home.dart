// ignore_for_file: prefer_const_literals_to_create_immutables, prefer_const_constructors

import 'package:flutter/material.dart';

import '../widget/fakesearch.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 9,
      child: Scaffold(
        appBar: AppBar(
          elevation: 0,
          backgroundColor: Colors.white,
          title: FakeSearch(),
          bottom: const TabBar(
              isScrollable: true,
              indicatorColor: Colors.blueGrey,
              indicatorWeight: 8,
              tabs: [
                Repeatedtab(
                  name: 'Men',
                ),
                Repeatedtab(
                  name: 'Woman',
                ),
                Repeatedtab(
                  name: 'Shoes',
                ),
                Repeatedtab(
                  name: 'Bag',
                ),
                Repeatedtab(
                  name: 'Electronics',
                ),
                Repeatedtab(
                  name: 'Accesories',
                ),
                Repeatedtab(
                  name: 'Home & Garden',
                ),
                Repeatedtab(
                  name: 'Kids',
                ),
                Repeatedtab(
                  name: 'Beauty',
                ),
              ]),
        ),
        body: const TabBarView(
          children: [
            Center(
              child: Text(
                'Men Screen',
                style: TextStyle(color: Colors.black),
              ),
            ),
            Center(
              child: Text('Woman Screen'),
            ),
            Center(
              child: Text('Shoes Screen'),
            ),
            Center(
              child: Text('Bags Screen'),
            ),
            Center(
              child: Text('Electronics Screen'),
            ),
            Center(
              child: Text('Accesories Screen'),
            ),
            Center(
              child: Text('Home & Garden Screen'),
            ),
            Center(
              child: Text('Kids Screen'),
            ),
            Center(
              child: Text('Beauty Screen'),
            ),
          ],
        ),
      ),
    );
  }
}

class Repeatedtab extends StatelessWidget {
  final String name;
  const Repeatedtab({
    required this.name,
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Tab(
      child: Text(
        name,
        style: const TextStyle(color: Color.fromARGB(255, 90, 90, 88)),
      ),
    );
  }
}
