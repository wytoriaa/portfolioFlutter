import 'package:flutter/material.dart';
class jsPage extends StatefulWidget {
  jsPage({Key? key}) : super(key: key);

  @override
  _jsPageState createState() => _jsPageState();
}
class JavaS {
  final String nome;
  final String picture;
  final String picture1;
  final String picture2;
  final String informacao;

  JavaS(this.nome, this.picture,this.picture1, this.picture2, this.informacao);
}

class _jsPageState extends State<jsPage> {

final exibindo = <JavaS>[
  JavaS(
    'CalcTUdo',
    'https://scontent.frec6-1.fna.fbcdn.net/v/t1.6435-9/240905190_4117593771683026_1054585643851177967_n.jpg?_nc_cat=109&ccb=1-5&_nc_sid=730e14&_nc_ohc=4aBj7QfIlscAX9GVe13&_nc_ht=scontent.frec6-1.fna&oh=6433846e6e910cb8e2a3ef7ee8b91472&oe=615608A5',
    'https://scontent.frec6-1.fna.fbcdn.net/v/t1.6435-9/240921695_4117593755016361_9058634141493702511_n.jpg?_nc_cat=110&ccb=1-5&_nc_sid=730e14&_nc_ohc=z6D93QGNeYQAX_jWL1J&_nc_ht=scontent.frec6-1.fna&oh=53ba255a1d9e2e4445734fed8cd7f950&oe=6156468B',
    'https://scontent.frec6-1.fna.fbcdn.net/v/t1.6435-9/236674779_4117593785016358_3008386640654565543_n.jpg?_nc_cat=101&ccb=1-5&_nc_sid=730e14&_nc_ohc=S-dKAqZYDwAAX_7nZwr&_nc_ht=scontent.frec6-1.fna&oh=72c179c5b81cf73336b9306b416bd9a4&oe=61546B22',
    'Aqui foi lançado para nós um projeto que também tinha CSS e HTML,\n porém o segredo desse projeto era a utilização da linguagem de programação JavaScript.',
  ), 
];

  @override
  Widget build(BuildContext context) {
    final textStyle = Theme.of(context).textTheme;
    return Scaffold(
      body: ListView.builder(
        itemCount: exibindo.length,
        itemBuilder: (BuildContext context, int index){
          JavaS mostrar = exibindo[index] ;

          return Container(
            decoration: BoxDecoration(gradient: LinearGradient(colors: [Colors.black, Colors.purple])),
            padding: const EdgeInsets.all(5.0),
            margin: const EdgeInsets.all(5.0),
        
            child: Column(
              children: [
                Image.network(mostrar.picture, height: 200, width: 500,),
                Image.network(mostrar.picture1, height: 200, width: 500,),
                Image.network(mostrar.picture2, height: 200, width: 500,),
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
