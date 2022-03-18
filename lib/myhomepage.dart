import 'package:flutter/material.dart';
import 'sectionone.dart';

class Myhomepage extends StatefulWidget {
  const Myhomepage({Key? key}) : super(key: key);

  @override
  State<Myhomepage> createState() => _MyhomepageState();
}

class _MyhomepageState extends State<Myhomepage> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: NestedScrollView(
          physics: NeverScrollableScrollPhysics(),
          headerSliverBuilder: (context, isScolled) {
            return [
              SliverAppBar(
                collapsedHeight: 282,
                expandedHeight: 282,
                flexibleSpace: Sectionone(),
              )
            ];
          },
          body: Padding(
            padding: const EdgeInsets.all(20.0),
            child: Container(
              height: 500,
              color: Colors.blue,
              child: GridView.builder(
                  gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                    crossAxisCount: 2,
                    crossAxisSpacing: 10,
                    mainAxisSpacing: 10,
                  ),
                  itemCount: 110,
                  itemBuilder: (_, index) {
                    return Container(
                      child: Center(
                        child: Text(
                          "This is grid",
                          style: TextStyle(
                            color: Colors.white,
                          ),
                        ),
                      ),
                      color: Colors.black,
                    );
                  }),
            ),
          ),
        ),
      ),
    );
  }
}
