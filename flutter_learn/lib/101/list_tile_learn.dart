import 'package:flutter/material.dart';
import 'package:flutter_learn/core/random_image.dart';

class ListTileLearn extends StatelessWidget {
  const ListTileLearn({super.key});
  final imageUrl =
      "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQpZ8JulEkB-Unukm-2O6e8PnbHTjE_z06mvw&s";
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: Column(
        children: [
          ListTile(
            title: RandomImage(),
            dense: true,
            onTap: () {},
            subtitle: Center(child: Text("How do you user your card")),
            leading: Icon(Icons.money),
            trailing: Icon(Icons.chevron_right),
          )
        ],
      ),
    );
  }
}
