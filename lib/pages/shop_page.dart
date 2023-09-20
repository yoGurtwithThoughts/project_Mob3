import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
class ShPage extends StatelessWidget{
  const ShPage({super.key});
  @override
  Widget build(BuildContext context){
    return Scaffold(
      backgroundColor: const Color.fromRGBO(0, 0, 0,55),
      appBar: AppBar(
        centerTitle: true,
        title: const Text(
          'Добро пожаловать в наш магазин!'
              'Надеемся что вы найдете нужный товар',
          style: TextStyle(
            color: Color.fromARGB(0, 0, 255,1),)
        ),
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
                color: Color.fromRGBO(47, 79, 79, 75),
                borderRadius: BorderRadius.horizontal(
                  left: Radius.circular(15),
                  right: Radius.circular(15),
                )
              ),
              padding: const EdgeInsets.all(15.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  const Text('Найдется всё',
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 25,
                  ),),
                  const SizedBox(
                    height: 5,
                  ),
                  const Text('Выберите товар с лучшими отзывами.',
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 35,
                    fontWeight: FontWeight.bold
                  ),),
                  const SizedBox(
                    height: 25,
                  ),
                  Container(
                    padding: const EdgeInsets.all(5),
                    decoration: BoxDecoration(
                      color: const Color.fromRGBO(128, 0, 0, 5),
                      borderRadius: BorderRadius.circular(10),
                    ),
                    child: const TextField(
                      decoration: InputDecoration(
                        border: InputBorder.none,
                        prefixIcon: Icon(Icons.search, color: Color.fromRGBO(139, 0, 0, 1),
                        size: 5),
                        hintText: 'Что нужно найти?',
                        hintStyle: TextStyle(
                          color: Colors.white,
                          fontSize: 10,
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
          ],
        ),
      ),
    );
  }
}