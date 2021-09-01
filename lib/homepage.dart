//import 'dart:html';

import 'package:flutter/material.dart';
//import 'package:google_fonts/google_fonts.dart';
class HomePage extends StatefulWidget {
  HomePage({Key? key}) : super(key: key);

  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Sejam bem-vindos!'),
        leading: Icon(Icons.favorite_border_rounded)
      ),
      body: Container(

        decoration: BoxDecoration(
          gradient: LinearGradient(
            begin: Alignment.topLeft,
            end: Alignment.topRight,
            colors: [
              Colors.black,
              Colors.purple
            ]
          )
        ),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            Text(' seja bem-vindo, ao meu portifólio', 
            style: TextStyle(
              fontFamily: 'Comfortaa',
              color: Colors.white,
              fontWeight: FontWeight.bold,
              fontSize: 20,
            ),
            ),
            Text(' meu nome é Wytoria e eu sou aluna de \n front- end e mobile na SoulCode Academy',
            style: TextStyle(
              fontFamily: 'Comfortaa',
              color: Colors.white,
              fontSize: 20,
            ),
            ),
            SizedBox(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.stretch,
                children: 
                  [ElevatedButton(
                    style: ElevatedButton.styleFrom(
                    primary: Colors.deepPurple, // background.
                    onPrimary: Colors.white, // foreground.
                    elevation: 4, // elevação do botão.
                    ),
                    onPressed: () {
                      
                    },
                    child: Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 16.0),
                    child: Text("saiba mais", textAlign: TextAlign.center),
                    ),
                  ),
                ],
              ),
            )
    ], 
        ),
      ),
    );
  }
}