import 'package:flutter/material.dart';

void main() {
  runApp(MaterialApp(
    title: 'Navigation Basics',
    home: FirstRoute(),
  ));
}

String text = '次へ';

final myFocusNode = FocusNode();

class FirstRoute extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('First Route'),
      ),
      body: Container(
        width: double.infinity,
        child: Column(
          children: [
            TextField(
              autofocus: true,
              decoration: InputDecoration(
                hintText: '中田',
              ),
            ),
            TextField(
              focusNode: myFocusNode,
            ),
            RaisedButton(
              child: Text('フォーカス'),
              onPressed: () {
                myFocusNode.requestFocus();
              },
            ),
          ],
        ),
      ),
    );
  }
}

void setState(Null Function() param0) {}
