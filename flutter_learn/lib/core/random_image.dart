import 'package:flutter/material.dart';

class RandomImage extends StatelessWidget {
  const RandomImage({super.key, this.height = 100});
  final imageUrl =
      "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQpZ8JulEkB-Unukm-2O6e8PnbHTjE_z06mvw&s";
  final double height;
  @override
  Widget build(BuildContext context) {
    return Image.network(
      imageUrl,
      height: height,
      fit: BoxFit.cover,
    );
  }
}
