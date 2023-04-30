import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      home: Scaffold(
        appBar: AppBar(
          title: Text('Satu baris memiliki 3 kontainer'),
        ),
        body: Row(
          children: <Widget>[
            Expanded(
              child: Container(
                color: Colors.red,
                height: 100,
                child: Center(
                  child: Text(
                    "Fikri Maulana 1301200239",
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 20,
                    ),
                  ),
                ),
              ),
            ),
            Expanded(
              child: Container(
                color: Colors.blue,
                height: 100,
                child: Center(
                  child: Text(
                    "Fikri Maulana 1301200239",
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 20,
                    ),
                  ),
                ),
              ),
            ),
            Expanded(
              child: Container(
                color: Colors.yellow,
                height: 100,
                child: Center(
                  child: Text(
                    "Fikri Maulana 1301200239",
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 20,
                    ),
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
