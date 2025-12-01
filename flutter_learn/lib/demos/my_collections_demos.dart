import 'package:flutter/material.dart';

class MyCollectionsDemos extends StatefulWidget {
  const MyCollectionsDemos({super.key});

  @override
  State<MyCollectionsDemos> createState() => _MyCollectionsDemosState();
}

class _MyCollectionsDemosState extends State<MyCollectionsDemos> {
  late final List<CollectionModel> _items;
  @override
  void initState() {
    super.initState();
    _items = CollectionItems()._items;
  }

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      itemCount: _items.length,
      padding: PaddingUtility().paddingHorizontal,
      itemBuilder: (context, index) {
        return _CategoryCard(model: _items[index]);
      },
    );
  }
}

class _CategoryCard extends StatelessWidget {
  const _CategoryCard({
    super.key,
    required CollectionModel model,
  }) : _model = model;

  final CollectionModel _model;

  @override
  Widget build(BuildContext context) {
    return Card(
      margin: PaddingUtility().paddingBottom,
      child: SizedBox(
        height: 300,
        child: Padding(
          padding: PaddingUtility().paddingGeneral,
          child: Column(
            children: [
              Expanded(child: Image.asset(_model.imagePath, fit: BoxFit.cover)),
              Padding(
                padding: PaddingUtility().paddingTop,
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [Text(_model.title), Text('${_model.price} eth')],
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}

class CollectionModel {
  final String imagePath;
  final int price;
  final String title;

  CollectionModel(
      {required this.imagePath, required this.price, required this.title});
}

class CollectionItems {
  late final List<CollectionModel> _items;

  CollectionItems() {
    _items = [
      CollectionModel(
          imagePath: ImagePathUtility.appleWithBg, price: 200, title: 'Apple'),
      CollectionModel(
          imagePath: ImagePathUtility.appleWithBg, price: 200, title: 'Apple'),
      CollectionModel(
          imagePath: ImagePathUtility.appleWithBg, price: 200, title: 'Apple'),
      CollectionModel(
          imagePath: ImagePathUtility.appleWithBg, price: 200, title: 'Apple'),
    ];
  }
}

class PaddingUtility {
  final paddingTop = EdgeInsets.only(top: 10);
  final paddingBottom = EdgeInsets.only(bottom: 20);
  final paddingGeneral = EdgeInsets.all(20);
  final paddingHorizontal = EdgeInsets.symmetric(horizontal: 20);
}

class ImagePathUtility {
  static const appleWithBg = 'assets/png/collectionsdemos.png';
}
