import 'package:flutter/material.dart';

void main() {
  runApp(
    MaterialApp(
      home: Scaffold(
        backgroundColor: Colors.blueGrey,
        appBar: AppBar(
          // ignore: prefer_const_constructors
          title: Text("I am rRich"),
          backgroundColor: Colors.blueGrey[900],
        ),
        // ignore: prefer_const_constructors
        body: Center(
          // ignore: prefer_const_constructors
          child: Image(
            // ignore: prefer_const_constructors
            image: AssetImage("images/diamond.png"),
          ),
        ),
      ),
    ),
  );
}
