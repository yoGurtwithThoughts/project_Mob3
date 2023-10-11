import 'package:flutter/material.dart';
class prasL extends StatelessWidget{
  final String Shvar;
  final String varr;
  const prasL(
      {
        required this.Shvar,
        super.key,
        required this.varr});
  @override
  Widget build(BuildContext context){
    return GestureDetector(

      child: Padding(
        padding: const EdgeInsets.only (left: 25.0),
        child: Text(
          varr,
          style: TextStyle(
              fontSize: 18,
              fontWeight: FontWeight.bold,
              color:  Colors.blue ),

        ),
      ),
    );

  }
}