import 'package:flutter/material.dart';

void main() {
  runApp(
    MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text('Hello, world!'),
        ),
        body: Center(
          child: Text(
            'Hello, world!',
            style: TextStyle(fontSize: 24),
          ),
        ),
      ),
    ),
  );
}
