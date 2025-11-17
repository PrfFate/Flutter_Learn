import 'package:flutter/material.dart';

class IconLearnView extends StatelessWidget {
  IconLearnView({super.key});
  final IconSize iconSize = IconSize();
  final IconColor iconColor = IconColor();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Hello"),
      ),
      body: Column(children: [
        IconButton(
            onPressed: () {},
            icon: Icon(
              Icons.message_outlined,
              color: iconColor.froly,
              size: iconSize.iconSmall,
            ))
      ]),
    );
  }
}

class IconSize {
  final double iconSmall = 40;
}

class IconColor {
  final Color froly = Color(0xffE0717A);
}
