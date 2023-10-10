import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:mobiledevelop/widgets/titleSh.dart';
import 'package:mobiledevelop/widgets/stSH.dart';
class ShPage extends StatelessWidget{
  const ShPage({super.key});
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black54,
    appBar: AppBar(
    centerTitle: true,
    title:
    const Text(
    'Online store Digital Cat',
    style: TextStyle(
    color: Colors.blueAccent,
    fontSize: 20,
      fontWeight: FontWeight.w500,
    ),),
      backgroundColor: Color.fromRGBO(128, 0, 128, 65),
      systemOverlayStyle: SystemUiOverlayStyle.dark,
      elevation: 25,
      leading: IconButton(
          onPressed: () {},
          icon: const Icon(
            Icons.menu,
            color:  Colors.blue,)
      ),
    ),
      body: SafeArea(
    child: Column(
    crossAxisAlignment: CrossAxisAlignment.start,
    children: [
    Container(
    width: double.infinity,
    decoration: const BoxDecoration(
    color: Color.fromRGBO(0, 0, 139,85),
    borderRadius: BorderRadius.horizontal(
    left: Radius.circular(15),
    right: Radius.circular(15),
    ),
    ),
      padding: const EdgeInsets.all(15.0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
        const Text('Лучшие производители комплектующих для ПК',
        style: TextStyle(
          color: Colors.white,
          fontSize: 15,
        ),),
          const SizedBox(
            height: 5,
          ),
          const Text('Выберите товар с лучшими отзывами.',
            style: TextStyle(
                color: Color.fromRGBO(224, 255, 255, 1),
                fontSize: 25,
                fontWeight: FontWeight.bold
            ),),
          const SizedBox(
            height: 25,
          ),
          Container(
            padding: const EdgeInsets.all(5),
            decoration: BoxDecoration(
              color: const Color.fromRGBO(0, 0, 0,1),
              borderRadius: BorderRadius.circular(10),
            ),
            child: const TextField(
              decoration: InputDecoration(
                border: InputBorder.none,
                prefixIcon: Icon(Icons.search, color: Colors.blue,
                    size: 15),
                hintText: 'Что нужно найти?',
                hintStyle: TextStyle(
                  color: Colors.white,
                  fontSize: 20,
                ),
              ),
            ),
          ),
          const SizedBox(
            height: 15,
          ),
        ],
      ),
    ),
      const SizedBox(
        height: 20,
      ),
      Padding(padding: const EdgeInsets.symmetric(horizontal: 25.0, vertical: 25.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const Text('Лучший товар по мнению покупателей',
              style: TextStyle(
                color: Color.fromRGBO(224, 255, 255, 1),
                fontSize: 15,
              ),
            ),
            const SizedBox(
              height: 20,
            ),
            SizedBox(
              height: 200,
              child: ListView(
                scrollDirection: Axis.horizontal,
                children: [
                  promoCardWidget('assets/corp.jpg'),
                    promoCardWidget('assets/cr9i.jpg'),
                    promoCardWidget('assets/vicard.jpg'),
                    promoCardWidget('assets/deepcl.jpg'),

                 ],
              ),),

          ],

      ),

    ),

    ],),
    )
    );
  }

  promoCardWidget(image) {
    return AspectRatio(aspectRatio: 2.62/3,
    child: Container(
        margin: const EdgeInsets.only(right: 15),
    decoration: BoxDecoration(
      borderRadius: BorderRadius.circular(20),
      image: DecorationImage(
        fit: BoxFit.cover,
        image: AssetImage(image,)
      ),
    ),
    child: Container(
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(20),
        gradient: LinearGradient(
          begin: Alignment.bottomRight,
          stops: const[0.1,0.9],
          colors: [
            Color.fromRGBO(0, 0, 0, 1),
          ]
        ),
      ),
    ),
    ),
    );
  }
  }