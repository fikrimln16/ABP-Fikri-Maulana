import 'package:flutter/material.dart';

void main() {
  runApp(
    MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text('Hello, world!'),
        ),
        body: Column(
          children: [
            Container(
              height: 200,
              width: double.infinity,
              color: Colors.blue,
              child: Center(
                child: Text(
                  'This is a container',
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 24,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ),
            ),
            Expanded(
              child: GridView.count(
                crossAxisCount: 2,
                padding: EdgeInsets.all(16),
                children: List.generate(
                  6,
                  (index) => Container(
                    color: Colors.grey[300],
                    margin: EdgeInsets.all(8),
                    child: Center(
                      child: Text(
                        'Grid item ${index + 1}',
                        style: TextStyle(
                          fontSize: 20,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    ),
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    ),
  );
}
