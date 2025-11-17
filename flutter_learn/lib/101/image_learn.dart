import 'package:flutter/material.dart';

class ImageLearn extends StatelessWidget {
  const ImageLearn({super.key});
  final _imageCar =
      "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcS4NTixfjVmPcoQuEoO76h99orKftcIYJ7eNA&s";

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: Column(children: [
        SizedBox(
          height: 400,
          width: 400,
          child: PngImage(name: ImageItems().sword2),
        ),
        Image.network(
          _imageCar,
          errorBuilder: (context, error, StackTrace) =>
              const Icon(Icons.abc_outlined),
        )
      ]),
    );
  }
}

class ImageItems {
  final String appleWithBook = "assets/apple.png";
  final String sword = "assets/png/sword.png";
  final String sword2 = "sword";
}

class PngImage extends StatelessWidget {
  const PngImage({super.key, required this.name});
  final String name;

  @override
  Widget build(BuildContext context) {
    return Image.asset("assets/png/$name.png", fit: BoxFit.cover);
  }
}
