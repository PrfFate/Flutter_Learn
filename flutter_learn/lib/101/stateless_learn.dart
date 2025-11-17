import 'package:flutter/material.dart';

class StatelessLearn extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: Column(
        children: [
          TitleTextWidget(
            title: "veli",
          ),
          TitleTextWidget(
            title: "veli2",
          ),
          TitleTextWidget(
            title: "veli3",
          ),
          TitleTextWidget(
            title: "veli4",
          ),
          _CustomContainer(),
          _emptyBox(),
        ],
      ),
    );
  }

  SizedBox _emptyBox() => SizedBox(height: 10);
}

class _CustomContainer extends StatelessWidget {
  //  " _ " private yapar sadece bu dosyadan erişilebilir.
  const _CustomContainer({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(
          10,
        ),
        color: Colors.red,
      ),
    );
  }
}

class TitleTextWidget extends StatelessWidget {
  const TitleTextWidget({super.key, this.title});
  final String? title;

  @override
  Widget build(BuildContext context) {
    return Text(
      title!,
      style: Theme.of(context).textTheme.headlineSmall,
    );
  }
}
