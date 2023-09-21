import 'package:flutter/material.dart';
import 'package:mobiledevelop/pages/shop_page.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context){
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: const ShPage(),
      theme:
      ThemeData(brightness: Brightness.dark, primaryColor: Color.fromRGBO(199, 21, 133, 1)),
    );
  }
}



