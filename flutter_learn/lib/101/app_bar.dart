import 'package:flutter/material.dart';

class AppBarLearnView extends StatelessWidget {
  const AppBarLearnView({super.key});
  final String _title = 'AppBar Learn View';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
          title: Text(_title),
          leading: Icon(Icons.chevron_left),

          //toolbarTextStyle: const TextStyle(color: Colors.red),
          //actionsIconTheme: IconThemeData(color: Colors.red, size: ),
          //automaticallyImplyLeading: false, otomatik back butonu gelmesin
          actions: [
            IconButton(
                onPressed: () {}, icon: Icon(Icons.mark_email_unread_sharp)),
            const Center(
              child: CircularProgressIndicator(),
            )
          ]),
      body: Column(
        children: const [],
      ),
    );
  }
}
