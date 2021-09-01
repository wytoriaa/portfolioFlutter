import 'package:flutter/material.dart';
class htmlPage extends StatefulWidget {
  htmlPage({Key? key}) : super(key: key);

  @override
  _htmlPageState createState() => _htmlPageState();
}
class HTML {
  final String nome;
  final String picture;
  final String pictures;
  final String informacao;

  HTML(this.nome, this.picture, this.pictures, this.informacao);
}
class _htmlPageState extends State<htmlPage> {

final mostra = <HTML>[
  HTML(
    'SoulFlix',
    'https://scontent.frec6-1.fna.fbcdn.net/v/t1.6435-9/240474105_4117576688351401_9203131772706510784_n.jpg?_nc_cat=107&ccb=1-5&_nc_sid=730e14&_nc_ohc=3F8crsr05oAAX_SbIy-&tn=72GiimqC7QX0-X-C&_nc_ht=scontent.frec6-1.fna&oh=a03a3fe367683ee2e5a115a9431c0c66&oe=6154E622',
    'https://scontent.frec6-1.fna.fbcdn.net/v/t1.6435-9/240871749_4117576648351405_361627633235541371_n.jpg?_nc_cat=110&ccb=1-5&_nc_sid=730e14&_nc_ohc=Hke1PObSqcgAX9IVVWl&_nc_ht=scontent.frec6-1.fna&oh=93d7f10d1f80a4d7f3c93ed0f35271a2&oe=61563923',
    ' primeiro projeto realizado no curso de front-end.\n nesse projeto colocamos em prática a criação de uma página\n exclusivamente só com HTML',
  ), 
];

  @override
  Widget build(BuildContext context) {
    final textStyle = Theme.of(context).textTheme;
    return Scaffold(
      body: ListView.builder(
        itemCount: mostra.length,
        itemBuilder: (BuildContext context, int index){
          HTML mostrar = mostra[index] ;

          return Container(
            decoration: BoxDecoration(gradient: LinearGradient(colors: [Colors.black, Colors.purple])),
            padding: const EdgeInsets.symmetric(),
            margin: const EdgeInsets.symmetric(),
        
            child: Column(
              children: [
                Image.network(mostrar.picture, height: 300, width: 600,),
                Image.network(mostrar.pictures, height: 300, width: 500,),
                Text(mostrar.nome, style: textStyle.headline5),
                Text('${mostrar.informacao}', 
                textAlign: TextAlign.justify,
                style: textStyle.subtitle1?.copyWith(color: Colors.white, fontFamily: 'Comfortaa'),
                )
              ],
            ),
          );
        }
      ),
    );
  }
}
