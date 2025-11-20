import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_learn/product/language/language_items.dart';

class TextFieldLearn extends StatefulWidget {
  const TextFieldLearn({super.key});

  @override
  State<TextFieldLearn> createState() => _TextFieldLearnState();
}

class _TextFieldLearnState extends State<TextFieldLearn> {
  final key = GlobalKey();
  FocusNode focusNodeTextFieldOne = FocusNode();
  FocusNode focusNodeTextFieldTwo = FocusNode();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: Padding(
        padding: const EdgeInsets.only(top: 8),
        child: Column(
          children: [
            TextField(
              maxLength: 20,
              buildCounter: (
                context, {
                int? currentLength,
                bool? isFocused,
                int? maxLength,
              }) {
                return _animatedContainer(currentLength);
              },
              keyboardType: TextInputType.emailAddress,
              autofillHints: const [AutofillHints.email],
              inputFormatters: [
                TextProjectInputFormmatter()._formatter,
              ],
              textInputAction: TextInputAction.next,
              focusNode: focusNodeTextFieldOne,
              style: TextStyle(color: Colors.blue),
              decoration: _InputDecorationUtility().emailInputDecoration,
            ),
            TextField(
                style: TextStyle(color: Colors.red),
                focusNode: focusNodeTextFieldTwo,
                decoration: InputDecoration(
                  border: OutlineInputBorder(),
                  labelText: 'Password',
                  fillColor: Colors.white,
                  prefixIcon: Icon(Icons.password),
                )),
          ],
        ),
      ),
    );
  }

  AnimatedContainer _animatedContainer(int? currentLength) {
    return AnimatedContainer(
      key: key,
      duration: const Duration(milliseconds: 300),
      height: 10,
      width: 10.0 * (currentLength ?? 0),
      color: Colors.green,
    );
  }
}

class TextProjectInputFormmatter {
  final _formatter = TextInputFormatter.withFunction(
    (oldValue, newValue) {
      if (newValue.text == "a") {
        return oldValue;
      } else {
        return newValue;
      }
    },
  );
}

class _InputDecorationUtility {
  final emailInputDecoration = InputDecoration(
      border: OutlineInputBorder(),
      labelText: LanguageItems.mailTitle,
      fillColor: Colors.white,
      prefixIcon: Icon(Icons.mail));
}
