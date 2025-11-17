import 'package:flutter/material.dart';

class ButtonLearn extends StatelessWidget {
  const ButtonLearn({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: Column(children: [
        TextButton(
          onPressed: () {},
          style: ButtonStyle(
            backgroundColor: WidgetStateProperty.resolveWith((states) {
              if (states.contains(WidgetState.pressed)) {
                return Colors.green; // Basıldığında yeşil olacak
              }
              return Colors.red; // Varsayılan olarak kırmızı
            }),
          ),
          child: const Text("Bas"),
        ),
        ElevatedButton(onPressed: () {}, child: Text("Tut")),
        IconButton(onPressed: () {}, icon: Icon(Icons.abc_rounded)),
        FloatingActionButton(onPressed: () {}, child: Icon(Icons.add)),
        OutlinedButton(
          onPressed: () {
            //Servise istek at
            //Sayfanın rengini düzenle
          },
          style: OutlinedButton.styleFrom(
            backgroundColor: Colors.red,
            shape: const CircleBorder(),
            padding: const EdgeInsets.all(10),
          ),
          child: const Text("Çek"),
        ),
        OutlinedButton.icon(
            onPressed: () {}, icon: Icon(Icons.abc), label: Text("Data")),
        InkWell(onTap: () {}, child: const Text("Custom")),
        Container(
          height: 200,
          color: Colors.white,
        ),
        SizedBox(height: 10),
        ElevatedButton(
          onPressed: () {},
          style: ElevatedButton.styleFrom(
              backgroundColor: Colors.black,
              padding: const EdgeInsets.only(
                  top: 20, bottom: 20, right: 40, left: 40),
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.all(Radius.circular(20)),
              )),
          child: Text(
            "Place Bid",
            style: Theme.of(context).textTheme.headlineSmall?.copyWith(
                  color: Colors.white,
                ),
          ),
        )
      ]),
    );
  }
}


//Borders
//CircleBorder(),RoundRectangleBorder()