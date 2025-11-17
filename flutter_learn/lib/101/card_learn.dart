import 'package:flutter/material.dart';

class CardLearn extends StatelessWidget {
  const CardLearn({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: Column(
        children: [
          Card(
            margin: ProjectMargin.cardMargin,
            shape:
                RoundedRectangleBorder(borderRadius: BorderRadius.circular(20)),
            child: SizedBox(
              height: 100,
              width: 200,
              child: Center(
                  child: Text(
                "Ali",
                style: TextStyle(color: Colors.black), // Burada düzelttim
              )),
            ),
          ),
          Card(
            margin: ProjectMargin.cardMargin,
            shape:
                RoundedRectangleBorder(borderRadius: BorderRadius.circular(20)),
            child: SizedBox(
              height: 100,
              width: 200,
              child: Center(
                  child: Text(
                "Ali",
                style: TextStyle(color: Colors.black), // Burada da düzelttim
              )),
            ),
          ),
          _CustomCard(
            child: SizedBox(
              height: 100,
              width: 200,
              child: Center(
                  child: Text(
                "Ali",
                style: TextStyle(color: Colors.black), // Burada da düzelttim
              )),
            ),
          )
        ],
      ),
    );
  }
}

class ProjectMargin {
  static final cardMargin = const EdgeInsets.all(10.0);
  static final roundedRectangleBorder =
      RoundedRectangleBorder(borderRadius: BorderRadius.circular(20));
}

class _CustomCard extends StatelessWidget {
  _CustomCard({super.key, required this.child});
  final Widget child;
  final roundedRectangleBorder =
      RoundedRectangleBorder(borderRadius: BorderRadius.circular(20));

  @override
  Widget build(BuildContext context) {
    return Card(
      margin: ProjectMargin.cardMargin,
      child: child,
    );
  }
}
