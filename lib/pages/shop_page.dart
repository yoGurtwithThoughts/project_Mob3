import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:mobiledevelop/widgets/titleSh.dart';
class ShPage extends StatelessWidget {
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
              color: Colors.blue,)
        ),
      ),

      body: SingleChildScrollView(

        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Container(
              width: double.infinity,
              decoration: const BoxDecoration(
                color: Color.fromRGBO(0, 0, 139, 85),
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
                      color: const Color.fromRGBO(0, 0, 0, 1),
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
            Padding(padding: const EdgeInsets.symmetric(
                horizontal: 25.0, vertical: 25.0),
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
                    height: 15,
                  ),
                  SizedBox(
                    height: 234.52,
                    child: ListView(
                      scrollDirection: Axis.horizontal,
                      children: [
                        promoCardWidget('assets/corpdep.jpg',
                          'Корпус от DeepCool',
                        ),
                        promoCardWidget('assets/intel.jpg', 'Процессоры от Intel',
                        ),
                        promoCardWidget('assets/vicard.jpg',
                        'Видеокарта Gigabyte Aourus RTX',
                        ),
                        promoCardWidget('assets/deepcl.jpg', 'ПК E2407 от MSI',
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
          Container(
           child:  const Column(
             children: [
           Padding(padding: const EdgeInsets.symmetric( horizontal: 25.0),
            child: Text('Каталог товаров',
              style: TextStyle(
                color: Color.fromRGBO(255, 245, 238, 1),
                fontSize:24,),)
             ,),
                SizedBox(
                 height: 25),
        Padding(padding: const EdgeInsets.symmetric( horizontal: 25.0),
        )
          ],
           ),
          ),

  ],),),);
  }
  promoCardWidget(image,text) {
    return AspectRatio(aspectRatio: 3.33 / 3,
      child: Container(
        margin: const EdgeInsets.only(right: 15),
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(20),
          image: DecorationImage(
              fit: BoxFit.cover,
              image: AssetImage(image),

          ),
        ),

          child: Container(
            margin: const EdgeInsets.only(right: 15),
              child:  Text('$text',
              style: TextStyle(
                fontSize: 12,
                fontStyle: FontStyle.italic,
                  color: Color.fromRGBO(30, 144, 255, 1)
              ),),
          ),
      ),
    );
  }

}
