import 'package:flutter/material.dart';

class TextLearnView extends StatelessWidget {
  const TextLearnView({super.key, this.userName});
  final String name = "Veli";

  final String? userName;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              "Welcome $name ${name.length}",
              maxLines: 2, //max satır
              overflow: TextOverflow
                  .ellipsis, // Text uzunsa bitmediği anlamında 3 nokta
              textAlign: TextAlign.right,

              style: TextStyle(
                  wordSpacing: 2,
                  fontStyle: FontStyle.italic,
                  color: Colors.lime,
                  decoration: TextDecoration.underline,
                  letterSpacing: 2,
                  fontSize: 16,
                  fontWeight: FontWeight.w600),
            ),
            Text(
              "Hello $name ${name.length}",
              maxLines: 2, //max satır
              overflow: TextOverflow
                  .ellipsis, // Text uzunsa bitmediği anlamında 3 nokta
              textAlign: TextAlign.right,
              style: ProjectStyles.welcomeStyle,
            ),
            Text("Hello $name ${name.length}",
                maxLines: 2, //max satır
                overflow: TextOverflow
                    .ellipsis, // Text uzunsa bitmediği anlamında 3 nokta
                textAlign: TextAlign.right,
                style: Theme.of(context)
                    .textTheme
                    .headlineSmall
                    ?.copyWith(color: Colors.yellow)),
            Text(userName ?? ''),
          ],
        ),
      ),
    );
  }
}

class ProjectStyles {
  static TextStyle welcomeStyle = TextStyle(
      wordSpacing: 2,
      fontStyle: FontStyle.italic,
      color: Colors.lime,
      decoration: TextDecoration.underline,
      letterSpacing: 2,
      fontSize: 16,
      fontWeight: FontWeight.w600);
}
