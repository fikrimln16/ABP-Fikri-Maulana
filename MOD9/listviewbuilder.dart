import 'package:flutter/material.dart';

void main() {
  runApp(
    MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text('List View Builder Example'),
        ),
        body: ListView.builder(
          itemCount: 10,
          itemBuilder: (BuildContext context, int index) {
            return ListTile(
              leading: Icon(Icons.account_circle),
              title: Text('List ${index + 1}'),
            );
          },
        ),
      ),
    ),
  );
}
