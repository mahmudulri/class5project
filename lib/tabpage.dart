import 'package:flutter/material.dart';
import 'tabone.dart';
import 'tabtwo.dart';

class Tabpage extends StatefulWidget {
  const Tabpage({Key? key}) : super(key: key);

  @override
  State<Tabpage> createState() => _TabpageState();
}

class _TabpageState extends State<Tabpage> {
  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 2,
      child: Scaffold(
        backgroundColor: Colors.grey,
        appBar: AppBar(
          backgroundColor: Colors.white,
          centerTitle: true,
          title: Text(
            "My Ads",
            style: TextStyle(
              color: Colors.black,
            ),
          ),
          bottom: TabBar(tabs: [
            Tab(
              child: Column(
                children: [
                  Text(
                    "My Ads",
                    style: TextStyle(
                      color: Colors.black,
                    ),
                  ),
                  Icon(
                    Icons.shop_outlined,
                    color: Colors.black,
                  ),
                ],
              ),
            ),
            Tab(
              child: Column(
                children: [
                  Text(
                    "My Favourite",
                    style: TextStyle(
                      color: Colors.black,
                    ),
                  ),
                  Icon(
                    Icons.favorite_border,
                    color: Colors.black,
                  ),
                ],
              ),
            ),
          ]),
        ),
        body: TabBarView(children: [
          Tabone(),
          Tabtwo(),
        ]),
      ),
    );
  }
}
