import 'package:flutter/material.dart';
import 'package:flutter_learn/product/language/language_items.dart';

class CounterHelloButton extends StatefulWidget {
  const CounterHelloButton({super.key});

  @override
  State<CounterHelloButton> createState() => _CounterHelloButtonState();
}

class _CounterHelloButtonState extends State<CounterHelloButton> {
  int _counterCustom = 1;
  final String _welcomeTitle = LanguageItems.welcomeTitle;

  void updateCounter() {
    setState(() {
      _counterCustom *= 5;
    });
  }

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
        onPressed: () {
          updateCounter();
        },
        child: Text('$_welcomeTitle $_counterCustom'));
  }
}
