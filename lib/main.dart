import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

import 'package:desino_flutter/src/page/basico_page.dart';
import 'package:desino_flutter/src/page/scroll_page.dart';
import 'package:desino_flutter/src/page/botones_page.dart';

 void main() => runApp(MyApp());
 
class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {

    /*SystemChrome.setSystemUIOverlayStyle(SystemUiOverlayStyle.dark.copyWith(
        statusBarColor: Colors.redAccent 
    ),
  
    );*/

    SystemChrome.setSystemUIOverlayStyle( SystemUiOverlayStyle.light.copyWith(
      statusBarColor: Colors.transparent
));

    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Diseno',
      initialRoute: 'botones',
      routes: {
        'basico' : (context) => BasicoPage(),
        'scroll' : (context) => ScrollPage(),
        'botones' : (context) => BotonesPage(),
      },
      
    );
  }
}