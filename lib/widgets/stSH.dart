import 'package:flutter/material.dart';
class Widgetfr extends StatefulWidget{
  final String varSh;
  final bool isvr;
  final VoidCallback onTp;
  const Widgetfr (
      {
        required this.varSh,
        required this.isvr,
        super.key, required this.onTp
      });
  @override
  Widget build(BuildContext context){
    return GestureDetector(
        onTap: onTp,
        child: Padding(
        padding: const EdgeInsets.only (left: 25.0),
    child: Text(
    varSh,
    style: TextStyle(
    fontSize: 18,
    fontWeight: FontWeight.bold,
    color: isvr? Colors.lightGreenAccent : Colors.limeAccent),
    ),
    ),
    );
  }

}

