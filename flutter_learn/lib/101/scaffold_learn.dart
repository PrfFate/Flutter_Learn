import 'package:flutter/material.dart';
import 'package:flutter_learn/101/container_sized_learn_box.dart';

class ScaffoldLeanrView extends StatelessWidget {
  const ScaffoldLeanrView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Narpos"),
        centerTitle: true,
        backgroundColor: Colors.red,
      ),
      backgroundColor: Colors.white38,
      extendBody: true,
      body: const Text("Merhaba"),
      floatingActionButton: FloatingActionButton(onPressed: () {
        showModalBottomSheet(
            context: context,
            builder: (context) => Container(
                  height: 200,
                ));
      }),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
      drawer: const Drawer(),
      bottomNavigationBar: Container(
        width: 200,
        height: 200,
        decoration: ProjectUtility.boxDecoration,
        child: BottomNavigationBar(items: const [
          BottomNavigationBarItem(icon: Icon(Icons.abc_outlined), label: "a"),
          BottomNavigationBarItem(icon: Icon(Icons.abc_outlined), label: "b"),
        ]),
      ),
    );
  }
}
