import 'package:flutter/material.dart';

void main() {
  runApp(
    MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text('Stack Example'),
        ),
        body: Stack(
          children: [
            Container(
              color: Colors.blue,
              width: double.infinity,
              height: double.infinity,
            ),
            Positioned(
              left: 100,
              top: 100,
              child: Container(
                color: Colors.white,
                width: 200,
                height: 200,
              ),
            ),
            Positioned(
              left: 150,
              top: 150,
              child: Container(
                color: Colors.red,
                width: 100,
                height: 100,
              ),
            ),
          ],
        ),
      ),
    ),
  );
}
