import 'package:flutter/material.dart';
class ShTitle extends StatelessWidget{
  final String AssorImage;
  final String ASsName;
  final String AssPrice;
  const ShTitle(
  {
    required this.AssorImage,
    required this.ASsName,
    required this.AssPrice,
    super.key});
  @override
  Widget build(BuildContext context){
    return Padding(padding: const EdgeInsets.only(left: 25.0, bottom: 25.0),
    child: Container(
    width: 100,
    height: 150,
    decoration:  BoxDecoration(
    borderRadius: BorderRadius.circular(25),
    color: Colors.black.withOpacity(55),
    ),
      child: Column(
    crossAxisAlignment: CrossAxisAlignment.start,
    children: [
      ClipRRect(
    borderRadius: BorderRadius.circular(15),
    child: Container(
    width: 150,
    height: 95,
    child: FittedBox(
    fit: BoxFit.fill, child: Image.asset(AssorImage),
    ),
    ),
    )
    ],
    ),
    Padding (padding: const EdgeInsets.symmetric(vertical: 15.0, horizontal: 15.0),
    child: Column(
      crossAxisAlignment: CrossAxisAlignment.start,
        children: [

        ],
    ),
    )
    ),
    );
  }


}