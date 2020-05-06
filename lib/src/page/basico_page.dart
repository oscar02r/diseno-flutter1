import 'package:flutter/material.dart';

class BasicoPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
          body: SingleChildScrollView(
                      child: Column(
              children: <Widget>[
                _createImage(),
                _createTitle(),
                _createActions(),
                _createText(),
                _createText(),
                _createText(),
                _createText(),
                _createText(),
                _createText(),
              ],
            ),
          )
    );
    
  }

 Widget _createImage() {

    return Image(image: NetworkImage('https://encrypted-tbn0.gstatic.com/images?q=tbn%3AANd9GcQdpE--NCxD04iZdVKY0UC2mlGgaDI5YW1GpSQniyNuDDoqSKng&usqp=CAU')
            ,
            fit: BoxFit.cover,
            width: double.infinity,
            height: 200.0,
            );
  }

  Widget _createTitle() {
     final estiloTitulo    = TextStyle(fontSize: 20.0, fontWeight: FontWeight.bold);
     final estiloSubtitulo = TextStyle(fontSize: 18.0, color: Colors.grey); 

     return SafeArea(
            child: Container(
         padding: EdgeInsets.symmetric(horizontal:30.0, vertical:20.0),
         child: Row(
           children: <Widget>[
              Expanded(
                child: Column(
                 crossAxisAlignment: CrossAxisAlignment.start,
                 children: <Widget>[
                   Text("Lago con un puente.", style: estiloTitulo,),
                   SizedBox(height: 7.0),
                   Text(" Un lago  en alemania.", style: estiloSubtitulo,),
                 ],
             ),
              ),
             Icon(
               Icons.star,
               color: Colors.red,
               size: 30.0,
               ),
                Text('41', style: TextStyle(fontSize: 20.0),),
              
           ],
         ),
       ),
     );
 }

 Widget _createActions() {

   return Row(
     mainAxisAlignment: MainAxisAlignment.spaceEvenly,
     children: <Widget>[
       
         _actions( Icons.call, 'CALL'     ),
         _actions( Icons.near_me, 'ROUTE' ),
         _actions( Icons.share, 'SHARE'   ),
       
     ],
   );
 }

 Widget _actions(IconData icon, String title) {
   return Column(
          children: <Widget>[
            Icon(icon,color: Colors.blue, size: 30.0,),
            SizedBox(height: 5.0),
            Text(title, style: TextStyle(color: Colors.blue),)
          ], 
        );
 }

 Widget _createText() {
      return SafeArea(
              child: Container(
               padding: EdgeInsets.symmetric(horizontal: 20.0),
               child: Text("Un lago  es un cuerpo de agua generalmente dulce, de una extensión considerable, que se encuentra separado del mar. El aporte de agua a todos los lagos viene de los ríos, de aguas freáticas y precipitación sobre el espejo del agua.", textAlign: TextAlign.justify,)),
      );
  }
}

