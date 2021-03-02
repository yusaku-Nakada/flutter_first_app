import 'package:flutter/material.dart';

class NextPage extends StatelessWidget {
  NextPage(this.data);
  final String data;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Second Route"),
      ),
      body: Container(
        height: double.infinity,
        color: Colors.red,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Text(data),
            Center(
              child: RaisedButton(
                child: Text('戻る'),
                onPressed: () {
                  // 1つ前に戻る
                  Navigator.pop(context, 'データ');
                },
              ),
            ),
          ],
        ),
      ),
    );
  }
}
