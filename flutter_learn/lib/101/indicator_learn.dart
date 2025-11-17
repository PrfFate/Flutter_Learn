import 'package:flutter/material.dart';

class IndicatorLearn extends StatelessWidget {
  const IndicatorLearn({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        actions: [Center(child: CenterCircularProgress())],
      ),
      body: const Center(
        child: LinearProgressIndicator(
          color: Colors.black,
        ),
      ),
    );
  }
}

class CenterCircularProgress extends StatelessWidget {
  const CenterCircularProgress({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Center(
        child: const CircularProgressIndicator(
      value: 0.9,
      strokeWidth: 10,
    ));
  }
}
