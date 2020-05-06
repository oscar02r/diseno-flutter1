import 'package:desino_flutter/src/page/basico_page.dart';
import 'package:flutter/material.dart';

import 'package:flutter/material.dart';
 
void main() => runApp(MyApp());
 
class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Diseno',
      initialRoute: 'basico',
      routes: {
        'basico': (context) => BasicoPage()
      },
      
    );
  }
}