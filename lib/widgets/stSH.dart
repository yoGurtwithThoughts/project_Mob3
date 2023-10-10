import 'package:flutter/material.dart';
class prasL extends StatelessWidget{
  final String Shvar;
  final bool isS;
  final VoidCallback onTp;
  const prasL(
      {
        required this.Shvar,
        required this.onTp,
        super.key,
        required this.isS});
  @override
  Widget build(BuildContext context){
    return GestureDetector(
      onTap: onTp,
      child: Padding(
        padding: const EdgeInsets.only (left: 25.0),
        child: Text(
          Shvar,
          style: TextStyle(
              fontSize: 18,
              fontWeight: FontWeight.bold,
              color: isS? Colors.blue : Colors.lightBlueAccent),

        ),
      ),
    );

  }
}