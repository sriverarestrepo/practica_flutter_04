
import 'package:flutter/material.dart';
import 'dart:math';
import 'dart:ui';

class BotonesPage extends StatelessWidget {
  const BotonesPage({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: <Widget>[
          _crearFondo(),
          SingleChildScrollView(
            child: Column(
              children: <Widget>[
                _titulos(),
                _botonesRedondeados(),
              ],
            ),
          ),
          
        ],
      ),
      bottomNavigationBar: _bottomNavigationBar(context),
    );
  }

  Widget _crearFondo() {
    
    final gradiente = Container(
      width: double.infinity,
      height: double.infinity,
      decoration: BoxDecoration(
        gradient: LinearGradient(
          begin: FractionalOffset(0.0, 0.6),
          end: FractionalOffset(0.0, 1.0),
          colors: [
            Color.fromRGBO(52, 54, 101, 1.0),
            Color.fromRGBO(35, 37, 57, 1.0),
          ]
        )
      ),
    );

    final caja = Transform.rotate(
      angle: -pi / 5.0,
      child: Container(
        height: 360.0,
        width: 360.0,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(90.0),
          gradient: LinearGradient(
            colors: [
              Color.fromRGBO(236, 98, 188, 1.0),
              Color.fromRGBO(241, 142, 172, 1.0)
            ]
          ),
        ),
      ),
    );
     
    return Stack(
      children: <Widget>[
        gradiente,
        Positioned(
          top: -80.0,
          left: -20.0,
          child: caja
        ),
      ],
    );

  }

  Widget _titulos() {
    
    
    return SafeArea(
      child: Container(
        padding: EdgeInsets.all(20.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            Text(
              'Classify transaction',
              style: TextStyle( color: Colors.white, fontSize: 30.0, fontWeight: FontWeight.bold),
            ),
            SizedBox(height: 10.0,),
            Text(
              'Classify this transaction into a particular category',
              style: TextStyle( color: Colors.white, fontSize: 18.0),
            ),

          ],
        ),
      ),
    ); 

  }

  Widget _bottomNavigationBar(BuildContext context){

    return Theme(
      data: Theme.of(context).copyWith(
        canvasColor: Color.fromRGBO(55, 57, 84, 1.0),
        primaryColor: Colors.pinkAccent,
        textTheme: Theme.of(context).textTheme.copyWith(
          caption: TextStyle(color: Colors.grey)
        )
      ), 
      child:  BottomNavigationBar(
        items: <BottomNavigationBarItem> [
          BottomNavigationBarItem(
            icon: Icon(
              Icons.calendar_view_day,
              size: 35.0,
            ),
            title: Container(),
          ),
          BottomNavigationBarItem(
            icon: Icon(
              Icons.bubble_chart,
              size: 35.0,
            ),
            title: Container(),
          ),
          BottomNavigationBarItem(
            icon: Icon(
              Icons.supervised_user_circle,
              size: 35.0,
            ),
            title: Container(),
          ),
        ],
      ),
    );
  }

  Widget _botonesRedondeados() {
    return Table(
      children: [
        TableRow(
          children: [
            _crearBotonRedondeado(Colors.blue, Icons.show_chart, 'Charts'),
            _crearBotonRedondeado(Colors.orange, Icons.shopping_cart, 'Cart'),
          ]
        ),
        TableRow(
          children: [
            _crearBotonRedondeado(Colors.purpleAccent, Icons.contact_mail, 'Mail'),
            _crearBotonRedondeado(Colors.greenAccent, Icons.comment, 'Foro'),
          ]
        ),
        TableRow(
          children: [
            _crearBotonRedondeado(Colors.indigo[100], Icons.child_care, 'Children'),
            _crearBotonRedondeado(Colors.indigoAccent, Icons.gamepad, 'Games'),
          ]
        ),
        TableRow(
          children: [
            _crearBotonRedondeado(Colors.lightGreen, Icons.gif, 'Gifs'),
            _crearBotonRedondeado(Colors.teal, Icons.group_work, 'TeamWork'),
          ]
        ),
      ],
    );
  }

  Widget _crearBotonRedondeado(Color color, IconData icono, String texto){

    return ClipRRect(
      child: BackdropFilter(
        filter: ImageFilter.blur(
          sigmaX: 1.0,
          sigmaY: 1.0
        ),
        child: Container(
          height: 180.0,
          margin: EdgeInsets.all(12.0),
          decoration: BoxDecoration(
            color: Color.fromRGBO(62, 66, 107, 0.7),
            borderRadius: BorderRadius.circular(30.0),
          ),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: <Widget>[
              CircleAvatar(
                backgroundColor: color,
                radius: 40.0,
                child: Icon(
                  icono,
                  color: Colors.white,
                  size: 35.0,
                ),
              ),
              Text(
                texto,
                style: TextStyle(color: color),
              ),
            ],

          ),
        ),
      ),
    );
  }




}