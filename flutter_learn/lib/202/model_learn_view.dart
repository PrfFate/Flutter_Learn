import 'package:flutter/material.dart';
import 'package:flutter_learn/202/model_learn.dart';

class ModelLearnView extends StatefulWidget {
  const ModelLearnView({super.key});

  @override
  State<ModelLearnView> createState() => _ModelLearnViewState();
}

class _ModelLearnViewState extends State<ModelLearnView> {
  var user9 = PostModel8(body: "Hello from model 9");

  @override
  void initState() {
    super.initState();

    final user1 = PostModel1();
    user1.body = "Hello";

    final user2 = PostModel2(1, 2, "title", "body");
    user2.title = "new title";

    final user3 = PostModel3(1, 2, "title", "body");

    final user4 =
        PostModel4(userId: 1, id: 2, title: "title named", body: "body named");

    final user5 = PostModel5(userId: 1, id: 2, title: "title ", body: "body ");
    user5.userId;

    final user6 = PostModel6(userId: 1, id: 2, title: "title ", body: "body ");

    final user7 = PostModel7();

    final user8 = PostModel8();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      floatingActionButton: FloatingActionButton(onPressed: () {
        setState(() {
          user9 = user9.copyWith(title: "vb");
          user9.updateBody("New body");
        });
      }),
      appBar: AppBar(
        title: Text(user9.body ?? "Not has any data"),
      ),
    );
  }
}
