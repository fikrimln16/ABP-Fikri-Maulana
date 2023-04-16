import 'package:flutter/material.dart';

void main() {
  runApp(
    MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text('List View Example'),
        ),
        body: ListView(
          children: [
            ListTile(
              leading: Icon(Icons.account_circle),
              title: Text('List 1'),
            ),
            Divider(),
            ListTile(
              leading: Icon(Icons.account_circle),
              title: Text('List 2'),
            ),
            Divider(),
            ListTile(
              leading: Icon(Icons.account_circle),
              title: Text('List 3'),
            ),
          ],
        ),
      ),
    ),
  );
}
