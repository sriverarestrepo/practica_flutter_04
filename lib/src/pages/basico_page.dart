import 'package:flutter/material.dart';

class BasicoPage extends StatelessWidget {

  final estiloTitulo = TextStyle(fontSize: 20.0, fontWeight: FontWeight.bold);
  final estiloSubTitulo = TextStyle(fontSize: 17.0, color: Colors.grey);


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          children: <Widget>[
          _crearImagen(),
          SizedBox(height: 5.0,),
          _crearTitulo(),
          SizedBox(height: 5.0,),
          _crearAcciones(),
          SizedBox(height: 5.0,),
          _crearTexto(),
          _crearTexto() 
        ]
        ),
      ),
    );
  }

  Widget _crearImagen(){
    return Container(
      width: double.infinity,
      child: Image(
        image: NetworkImage('https://www.proify.com/wp-content/uploads/2016/12/landscape-photography-competition.jpg'),
        fit: BoxFit.cover,
      ),
    );
  }

  Widget _crearTitulo(){
    return  SafeArea(
      child: Container(
          padding: EdgeInsets.symmetric(horizontal: 30.0, vertical: 20.0),
          child: Row(
            
            children: <Widget>[
              
              Expanded(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: <Widget>[
                    Text('Paisajismo', style: estiloTitulo,),
                    SizedBox(height: 7.0),
                    Text(
                      'Podemos observar el paisaje en total equilibrio.',
                      style: estiloSubTitulo,
                      )
                  ],
                ),
              ),
              Icon(
                Icons.star_border,
                size: 30.0,
                color: Colors.red,
              ),
              Text(
                '41',
                style: TextStyle(
                  fontSize: 20.0,
                ),
              )

            ],
          ),
        ),
    );
  }

  Widget _crearAcciones(){
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
      children: <Widget>[
        _crearAccion(Icons.call,'Call'),
        _crearAccion(Icons.near_me,'Route'),
        _crearAccion(Icons.share,'Share'),
      ],
    );
  }

  Widget _crearAccion(IconData icon, String texto){
    return Column(
      children: <Widget>[
        Icon(
          icon, 
          color: Colors.blue,size: 45.0
        ),
        SizedBox(height: 5.0,),
        Text(
          texto,
          style: TextStyle(fontSize: 15.0, color: Colors.blue),
        )
      ],
    );
  }

  Widget _crearTexto() {
    return Container(
      padding: EdgeInsets.symmetric(horizontal: 40.0,vertical: 20.0),
      child: Text(
        'A continuacion veremos un breve parrafo de paisajismo, El paisajismo es la actividad destinada a modificar las características visibles, físicas y anímicas de un espacio, tanto rural como urbano, entre las que se incluyen: los elementos vivos, tales como flora y fauna, lo que habitualmente se denomina jardinería, el arte de cultivar plantas con el propósito de crear un bello entorno paisajístico; los elementos naturales como las formas del terreno, las elevaciones o los cauces de agua; los elementos humanos, como estructuras, edificios u otros objetos materiales creados por el hombre; los elementos abstractos, como las condiciones climáticas y luminosas; y los elementos culturales.',
        textAlign: TextAlign.justify,
      ),
    );
  }

  
}