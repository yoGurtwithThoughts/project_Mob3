import 'package:flutter/material.dart';
class CalcPage extends StatelessWidget{
  const CalcPage({super.key})
  @override
  State<CalcPage> createState()=> _CalcPageState();
  
}
class _CalcPageState extends State<CalcPage> {
  dynamic displaytxt=20;
  Widget ClCbutton(String bttxt,Color bttcolor, Color bttxtcol) {
    return Container(
      margin: const EdgeInsets.all(0),
      child: ElevatedButton(
        onPressed: (){
          calculation(bttxt);
          },
        style: ButtonStyle(
          backgroundColor: MaterialStateProperty.all(bttcolor),
          padding: MaterialStateProperty.all(const EdgeInsets.all(20),
          shape: MaterialStateProperty.all(RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(55.5),
          ),))
        ),
        child: Text(
          bttxt,
          style: TextStyle(
            fontSize: 24,
            color: bttxtcol,
          ),
        ),
      ),
    );
  }
  @override
  // TODO: implement widget
  Widget build(BuildContext context)
  {
    return Scaffold(
      backgroundColor: Color.fromRGBO(0, 255, 0, 25),
      appBar: AppBar(
        centerTitle: true,
        title: const Text('Встроенный калькулятор для рассчета стоимости заказа'),
        backgroundColor: Colors.black,
      ),
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 5),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.end,
          children: <Widget> [
            SingleChildScrollView(
              scrollDirection: Axis.vertical,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.end,
                  children: <Widget> [
                    Padding(padding: const EdgeInsets.all(10),
                    child: Text('$Text'),
                    textAlgin: TextAlign.left,
                    )
                  ]
              ),
            )
          ],
        ),
      ),
    );
  }
  

  void calculation(String bttxt) {}
}