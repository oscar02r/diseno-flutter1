import 'package:flutter/material.dart';
import 'dart:ui';
import 'dart:math';



class BotonesPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: <Widget>[
          _fondoApp(),
          SingleChildScrollView(
            child: Column(
              children: <Widget>[
                _titulo(),
                _botonesRedondeados()
              ],
            ),
          )
        ],
      ),
      bottomNavigationBar: _bottomNavigationBar(context),
      
    );
  }

  Widget _fondoApp() {
    final gradient = Container(
      height: double.infinity,
      width: double.infinity,
      decoration: BoxDecoration(
          gradient: LinearGradient(
              begin: FractionalOffset(0.0, 0.6),
              end: FractionalOffset(0.0, 1.0),
              colors: [
            Color.fromRGBO(52, 54, 101, 1.0),
            Color.fromRGBO(35, 37, 57, 1.0),
          ])),
    );

    final cajaRosa = Transform.rotate(
      angle: -pi / 5.0,
      child: Container(
        height: 360.0,
        width: 360.0,
        decoration: BoxDecoration(
            gradient: LinearGradient(colors: [
              Color.fromRGBO(236, 98, 188, 1.0),
              Color.fromRGBO(241, 142, 172, 1.0)
            ]),
            borderRadius: BorderRadius.circular(80.0)),
      ),
    );

    return Stack(
      children: <Widget>[
        gradient,
        Positioned(top: -100.0, right: 60.0, child: cajaRosa)
      ],
    );
  }

  Widget _titulo() {
    return SafeArea(
      child: Container(
        padding: EdgeInsets.all(20.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            Text('Classify transaction',
                style: TextStyle(
                    color: Colors.white,
                    fontSize: 30.0,
                    fontWeight: FontWeight.bold)),
            SizedBox(
              height: 10.0,
            ),
            Text('Classify this transaction into a particular category',
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 18.0,
                ))
          ],
        ),
      ),
    );
  }

   Widget _bottomNavigationBar(BuildContext context) {
      
      return Theme(
        data: Theme.of(context).copyWith(
            canvasColor: Color.fromRGBO( 55, 57, 84, 1 ),
            primaryColor: Colors.pinkAccent,
            textTheme: Theme.of(context).textTheme.copyWith(caption: TextStyle(color: Color.fromRGBO(166, 117, 152, 1.0)))
        ), 
        child: BottomNavigationBar(

          items: [
          BottomNavigationBarItem(
          icon: Icon(Icons.calendar_today, size: 30.0,),
          title: Container()
          ),
          BottomNavigationBarItem(
          icon: Icon(Icons.bubble_chart, size: 30.0),
          title: Container()
          ),
           BottomNavigationBarItem(
          icon: Icon(Icons.supervised_user_circle, size: 30.0 ),
          title: Container()
          )
        ])
        );
  }

 Widget _botonesRedondeados() {
        return Table(
              children: [
                TableRow(
                  children: [
                    _crearBotonRedondeado(Colors.blue, Icons.border_all, 'General' ),
                    _crearBotonRedondeado(Colors.orangeAccent  , Icons.drive_eta, 'Car' ),
                  ]
                ),
                TableRow(
                  children: [
                    _crearBotonRedondeado(Colors.blue[800], Icons.dns, 'DNS' ),
                    _crearBotonRedondeado(Colors.purpleAccent[200]  , Icons.directions_bus, 'Bus' ),
                  ]
                ),
                TableRow(
                  children: [
                    _crearBotonRedondeado( Colors.red, Icons.border_all, 'General' ),
                    _crearBotonRedondeado( Colors.tealAccent  , Icons.domain, 'Domain' ),
                  ]
                ),
              ],
        );
  }

 Widget _crearBotonRedondeado(Color color, IconData icono, String texto) {
        return ClipRect(
                  child: BackdropFilter(
            filter: ImageFilter.blur(sigmaY: 10.0, sigmaX: 10.0),
            child: Container(
                height: 180.0,
                margin: EdgeInsets.all(15.0),
                decoration: BoxDecoration(
                  color: Color.fromRGBO(62, 66, 107, 0.7),
                  borderRadius: BorderRadius.circular(20.0),
                ),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: <Widget>[
          CircleAvatar(
            radius: 30.0,
            backgroundColor: color,
            child: Icon(icono,
            ),
          ),
          SizedBox(height: 10.0,),
          Text( texto, style: TextStyle(color: color),)
                  ],
                ),
              ),
            ),
        );
  }
}