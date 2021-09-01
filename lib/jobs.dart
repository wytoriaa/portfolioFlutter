// import 'dart:ffi';
// import 'dart:math';
// import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:portifolio/cssPage.dart';
import 'package:portifolio/htmlPage.dart';
import 'package:portifolio/jsPage.dart';
import 'package:portifolio/reactPage.dart';
import 'package:url_launcher/url_launcher.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
class jobPage extends StatefulWidget {
  jobPage({Key? key}) : super(key: key);

  @override
  _jobPageState createState() => _jobPageState();
}
class Logo {
  final String picture;

  Logo(this.picture);
}


class _jobPageState extends State<jobPage> {

final logo = <Logo>[
  Logo(
    'https://scontent.frec31-1.fna.fbcdn.net/v/t1.6435-9/240628423_4111476462294757_3041881752670587465_n.jpg?_nc_cat=108&ccb=1-5&_nc_sid=730e14&_nc_ohc=8VgmahdxqD8AX8fwMSd&_nc_ht=scontent.frec31-1.fna&oh=b383cb0ce8589e1cab8a9a32a77eb56d&oe=61503E08'
  )
];

  @override
  Widget build(BuildContext context) {
    //  final textStyle = Theme.of(context).textTheme;
    // var _formKey;
    return Scaffold(
      appBar: AppBar(
        title: Text(''),
        
  
      ),
      drawer: Drawer(
        child: ListView(
          children: [
            // DrawerHeader(
            //   child: Text('flutter app', style: TextStyle(fontSize: 24),), //textstyle tb modifica a fonte
            //   decoration: BoxDecoration(
            //     // image: DecorationImage(
            //     //   image: NetworkImage('')
            //     //   ),
            //     gradient: LinearGradient(
            //       colors: [
            //         Colors.purple,
            //         Colors.pink
            //       ]
            //     )
            //   ),
            //   ),
            UserAccountsDrawerHeader(
              accountName: Text('Wytoria Rodrigues', 
              style: TextStyle(
              fontFamily: 'Comfortaa',
              color: Colors.white,
              fontWeight: FontWeight.bold,
              fontSize: 20,
            ),
            ), 
              accountEmail: Text('wytoria@wytoria.com.br'),
              decoration: BoxDecoration(gradient: LinearGradient(
                begin: Alignment.topLeft,
                end: Alignment.topRight,
                colors: [Colors.purple, Colors.black])),
              currentAccountPicture: new Container(
                width: 10,
                height: 10,
                decoration: new BoxDecoration(
                  shape: BoxShape.circle,
                  image: new DecorationImage(
                    fit: BoxFit.fill,
                    image: NetworkImage("https://scontent.frec31-1.fna.fbcdn.net/v/t1.6435-9/240722335_4111410085634728_2086793694350726271_n.jpg?_nc_cat=109&ccb=1-5&_nc_sid=730e14&_nc_ohc=7iDECMH8o-cAX8OXE2p&_nc_ht=scontent.frec31-1.fna&oh=51e83f433677e7c35fef3a84731ab86f&oe=6152A724")
                    )
                ),
              )
              //otherAccountsPictures: [CircleAvatar(child: Icon(Icons.person_outline),)],
              ),
              ListTile(
                title: Text('HTML'),
                onTap: () {
                  Navigator.push(context, MaterialPageRoute(builder: (context) => htmlPage()));
                }, //deixa o negocio clicavel
                leading: Icon(Icons.favorite),
              ), //são os itens da lista
              ListTile(
                title: Text('CSS'),
                onTap: () {
                  Navigator.push(context, MaterialPageRoute(builder: (context) => cssPage()));
                },
                leading: Icon(Icons.cloud),
              ),
              ListTile(
                title: Text('JavaScript'),
                onTap: () {
                  Navigator.push(context, MaterialPageRoute(builder: (context) => jsPage()));
                },
                leading: Icon(Icons.calculate),
              ),
              ListTile(
                title: Text('React Native'),
                onTap: () {
                  Navigator.push(context, MaterialPageRoute(builder: (context) => reactPage()));
                },
                leading: Icon(Icons.mobile_friendly),
              ),
            
          ],
          ),
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
            Container(
              height: 300,
              width: 100,
              child: CircleAvatar(
                backgroundImage: 
                NetworkImage('https://scontent.frec6-1.fna.fbcdn.net/v/t1.6435-9/240587766_4113831868725883_6492417469247008031_n.jpg?_nc_cat=102&ccb=1-5&_nc_sid=730e14&_nc_ohc=4ClcJ4fwm3kAX-CwD84&_nc_ht=scontent.frec6-1.fna&oh=36d3ee35f967167f891719f20edcb564&oe=61537147'),
                radius:160, 
              ),
            ),
            Text(' seja bem-vindo, ao meu portifólio', 
            style: TextStyle(
              fontFamily: 'Comfortaa',
              color: Colors.white,
              fontWeight: FontWeight.bold,
              fontSize: 20,
            ),
            ),
            Text(' meu nome é Wytoria',
            style: TextStyle(
              fontFamily: 'Comfortaa',
              color: Colors.white,
              fontSize: 20,
            ),
            ),
            Text(' eu sou aluna de front-end e mobile',
            style: TextStyle(
              fontFamily: 'Comfortaa',
              color: Colors.white,
              fontSize: 20,
            ),
            ),
            Text(' na SoulCode Academy',
            style: TextStyle(
              fontFamily: 'Comfortaa',
              color: Colors.white,
              fontSize: 20,
            ),
            ),
    ],
        ),
      ),
      floatingActionButton: FloatingActionButton(onPressed: (){abrirWhatsApp();},
      child: Icon(FontAwesomeIcons.whatsapp),),


    );
  }
}
      abrirWhatsApp() async {
  var whatsappUrl = "https://wa.me/5581998475176";

  if (await canLaunch(whatsappUrl)) {
    await launch(whatsappUrl);
  } else {
    throw 'Could not launch $whatsappUrl';
  }
}