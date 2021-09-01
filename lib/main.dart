import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
//import 'package:portifolio/homepage.dart';
import 'package:portifolio/jobs.dart';
void main (){
  runApp(meuPortifolio());
}
class meuPortifolio extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'meu portifólio',
      home: jobPage(),
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        primarySwatch: Colors.deepPurple,
        textTheme: GoogleFonts.robotoCondensedTextTheme()
      ),
    ); 
  }
}