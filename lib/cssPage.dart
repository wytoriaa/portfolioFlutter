import 'package:flutter/material.dart';
class cssPage extends StatefulWidget {
  cssPage({Key? key}) : super(key: key);

  @override
  _cssPageState createState() => _cssPageState();
}
class CSS {
  final String nome;
  final String picture;
  final String informacao;

  CSS(this.nome, this.picture, this.informacao);
}
class _cssPageState extends State<cssPage> {

final show = <CSS>[
  CSS(
    'A viagem de Chihiro',
    'https://scontent.frec6-1.fna.fbcdn.net/v/t1.6435-9/240852904_4116124355163301_8047574381875194287_n.jpg?_nc_cat=111&ccb=1-5&_nc_sid=730e14&_nc_ohc=28YT3h8bh7YAX9SuTeW&_nc_ht=scontent.frec6-1.fna&oh=84947ae2e5f2e4de69ba380f173188cc&oe=6154D2F5',
    'Esse projeto, inspirado em outros e com a temática do filme que ganhou Oscar, foi realizado com HTML, CSS e JS, no qual várias novidades de CSS foram implementadas, como por exemplo keyframe',
  ), 
];


  @override
  Widget build(BuildContext context) {
    final textStyle = Theme.of(context).textTheme;
    return Scaffold(
      body: ListView.builder(
        itemCount: show.length,
        itemBuilder: (BuildContext context, int index){
          CSS mostrar = show[index] ;

          return Container(
            decoration: BoxDecoration(gradient: LinearGradient(colors: [Colors.black, Colors.purple])),
            padding: const EdgeInsets.all(5.0),
            margin: const EdgeInsets.all(5.0),
        
            child: Column(
              children: [
                Image.network(mostrar.picture, height: 500, width: 500,),
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
