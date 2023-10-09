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
    ),
      Padding(padding: const EdgeInsets.symmetric(vertical: 10.5, horizontal: 7.5),
      child: Container(
        height: 75,
        width: 15,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const SizedBox(
              height: 55,
            ),
            Text('Перейти в каталог',
            style: TextStyle(
              fontWeight: FontWeight.bold,
              color: Colors.lightBlueAccent,
              fontSize: 25,
            ),)
          ],
        ),

      ),),
      Padding(padding: const EdgeInsets.symmetric(horizontal: 12.5),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Text('$ASsName'),
        Container(
          padding: const EdgeInsets.all(4),
          decoration: BoxDecoration(
            color: Color.fromRGBO(255, 0, 255, 1),
            borderRadius: BorderRadius.circular(15),

          ),
          child: const Icon(Icons.directions_run, color: Colors.white, size: 15),
        ),
      ],

      ),)
    ],
    ),

    ),
    );

  }


}