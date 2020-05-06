import 'package:flutter/material.dart';

class ScrollPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
          body:PageView(
            scrollDirection: Axis.vertical,
            children: <Widget>[
              _pagina1(),
              _pagina2(),
            ],
          )
    );
  }

  Widget _pagina1() {
        return Stack(
          children: <Widget>[
            _colorFondo(),
            _imagenFondo(),
            _crearTexto(),
          ],
        );
  }

 Widget _colorFondo() {
    return Container(
      height: double.infinity,
      width: double.infinity,
      color: Color.fromRGBO(108, 192, 218, 1.0),
    );
 }

 Widget _imagenFondo() {
   return Container(
     width: double.infinity,
     height: double.infinity,
     child: Image(
       image: AssetImage('assets/133 scroll-1.png'),
       fit: BoxFit.cover,
     ),
   );
 }

 Widget _crearTexto() {
       final estiloTexto = TextStyle(color: Colors.white, fontSize: 50.0);

       return SafeArea(
                child: Column(
           children: <Widget>[
              SizedBox(height: 40.0),
             Text('11°', style: estiloTexto),
             Text('Miércoles', style: estiloTexto,),
             Expanded(child: Container()),
             Icon(Icons.keyboard_arrow_down, size: 100.0,color: Colors.white)
           ],
         ),
       );
  }

  Widget _pagina2() {
         return Stack(
           children: <Widget>[
             _colorFondo(),
             _button()
           ],
         );
  }
  
}

Widget _button() {
    final estilo = TextStyle(color: Colors.white, fontSize: 40.0);
    return Center(
      child: RaisedButton(
        color: Colors.blue,
        elevation: 40.0,
        padding: EdgeInsets.symmetric(horizontal:40.0, vertical: 20.0),
        shape:StadiumBorder(),
        child: Text('Bienvenido', style: estilo,),
        onPressed: (){}
        )
        );
}