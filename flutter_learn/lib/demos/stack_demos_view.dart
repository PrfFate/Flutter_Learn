import 'package:flutter/material.dart';
import 'package:flutter_learn/core/random_image.dart';

class StackDemosView extends StatelessWidget {
  const StackDemosView({super.key});
  final _cardHeight = 50.0;
  final _cardWidht = 200.0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: Column(
        children: [
          Expanded(
              flex: 4,
              child: Stack(
                alignment: Alignment.center,
                children: [
                  Positioned.fill(
                    child: RandomImage(),
                    bottom: _cardHeight / 2,
                  ),
                  Positioned(
                    height: _cardHeight,
                    bottom: 0,
                    width: _cardWidht,
                    child: _CardCustom(),
                  ),
                ],
              )),
          const Spacer(
            flex: 6,
          )
        ],
      ),
    );
  }
}

class _CardCustom extends StatelessWidget {
  const _CardCustom({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Card(
      color: Colors.black,
      shape: RoundedRectangleBorder(),
    );
  }
}
