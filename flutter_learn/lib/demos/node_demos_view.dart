import 'package:flutter/material.dart';
import 'package:flutter_learn/101/image_learn.dart';

class NodeDemosView extends StatelessWidget {
  const NodeDemosView({super.key});
  final _title = "Create your first note";
  final _description = "Add a note ";
  final _createNote = "Create a Note";
  final _importNotes = "Import Notes";

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.blueGrey[50],
      appBar: AppBar(title: Text("History Of Sword")),
      body: Padding(
        padding: PaddingItems().horizontalPadding,
        child: Center(
          child: Column(
            children: [
              Container(
                margin: EdgeInsets.only(top: 20),
                child: SizedBox(
                  height: 250,
                  width: 250,
                  child: PngImage(name: ImageItems().sword2),
                ),
              ),
              Container(
                  margin: EdgeInsets.only(top: 20),
                  child: _TitleWidget(title: _title)),
              Padding(
                padding: PaddingItems().verticalPadding,
                child: Container(
                  margin: EdgeInsets.only(top: 20),
                  child: _SubTitleWidget(
                      title: _description, textAlign: TextAlign.center),
                ),
              ),
              const Spacer(),
              ElevatedButton(
                onPressed: () {},
                child: SizedBox(
                  height: ButtonHeight.buttonNormalHeight,
                  child: Center(
                    child: Text(_createNote,
                        style: Theme.of(context)
                            .textTheme
                            .headlineSmall
                            ?.copyWith(color: Colors.black)),
                  ),
                ),
              ),
              Container(
                  margin: EdgeInsets.only(top: 20),
                  child:
                      TextButton(onPressed: () {}, child: Text(_importNotes))),
              const SizedBox(height: 50),
            ],
          ),
        ),
      ),
    );
  }
}

//Center text widget
class _SubTitleWidget extends StatelessWidget {
  const _SubTitleWidget({
    super.key,
    required this.title,
    this.textAlign = TextAlign.center,
  });
  final TextAlign textAlign;
  final String title;

  @override
  Widget build(BuildContext context) {
    return Text(
      title * 8,
      textAlign: textAlign,
      style: Theme.of(context)
          .textTheme
          .headlineSmall
          ?.copyWith(color: Colors.black, fontWeight: FontWeight.normal),
    );
  }
}

class _TitleWidget extends StatelessWidget {
  const _TitleWidget({
    super.key,
    required this.title,
  });

  final String title;

  @override
  Widget build(BuildContext context) {
    return Text(
      title,
      style: Theme.of(context)
          .textTheme
          .headlineSmall
          ?.copyWith(color: Colors.black, fontWeight: FontWeight.w700),
    );
  }
}

class PaddingItems {
  final EdgeInsets horizontalPadding =
      const EdgeInsets.symmetric(horizontal: 20);
  final EdgeInsets verticalPadding = const EdgeInsets.symmetric(vertical: 20);
}

class ButtonHeight {
  static const double buttonNormalHeight = 50;
}
