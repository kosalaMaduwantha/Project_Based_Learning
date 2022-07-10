import 'package:flutter/material.dart';

void main() {
  runApp(
    MyApp(),
  );
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        backgroundColor: Colors.teal,
        body: Column(
          crossAxisAlignment: CrossAxisAlignment.end,
          children: [
            Container(
              color: Colors.white,
              child: Text("Container 01"),
              margin: EdgeInsets.only(top: 25.0),
              height: 100.0,
              width: 100.0,
            ),
            SizedBox(
              height: 20.0,
            ),
            Container(
              child: Text("Container 02"),
              color: Colors.blue,
              height: 100.0,
              width: 100.0,
            ),
            Container(
              child: Text("Container 02"),
              color: Colors.red,
              height: 100.0,
              width: 100.0,
            ),
            Container(
              width: double.infinity,
            )
          ],
        ),
      ),
    );
  }
}
