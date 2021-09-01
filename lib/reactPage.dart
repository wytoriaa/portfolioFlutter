import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Assets',
      home: reactPage(),
      theme: ThemeData(fontFamily: 'Comfortaa', brightness: Brightness.dark),
    );
  }
}

class reactPage extends StatelessWidget {
  Widget _buildPage(String text, String asset) {
    return Container(
      child: Container(
        child: Text(text, style: TextStyle(fontSize: 48.0)),
        alignment: Alignment.centerLeft,
        color: Colors.black26,
      ),
      decoration: BoxDecoration(
          color: Colors.black54,
          image: DecorationImage(
            fit: BoxFit.cover,
            image: AssetImage(asset),
          )),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: PageView(
      children: [
        _buildPage("", "assets/images/app1.jpeg"),
        _buildPage("", "assets/images/app2.jpeg"),
        _buildPage("", "assets/images/app3.jpeg"),
      ],
    )
    );
  }
}
