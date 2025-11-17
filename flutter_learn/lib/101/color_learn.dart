import 'package:flutter/material.dart';

class ColorLearn extends StatelessWidget {
  ColorLearn({super.key});
  ColorsItem colorsItem = ColorsItem();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: Column(
        children: [
          Container(
            child: Text(
              "data",
              style: Theme.of(context).textTheme.titleSmall?.copyWith(
                    color: Theme.of(context).colorScheme.error,
                  ),
            ),
          ),
        ],
      ),
    );
  }
}

class ColorsItem {
  final Color porchase = Color(0xffED8F61);

  static const Color sulu = Color.fromRGBO(198, 237, 97, 1);
}
