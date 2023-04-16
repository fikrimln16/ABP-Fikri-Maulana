import 'package:flutter/material.dart';

void main() {
  runApp(
    MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text('List View Separated Example'),
        ),
        body: ListView.separated(
          itemCount: 10,
          separatorBuilder: (BuildContext context, int index) => Divider(),
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
