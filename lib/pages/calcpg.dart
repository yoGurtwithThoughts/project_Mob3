import 'dart:js_util';

import 'package:flutter/material.dart';

class ClcPage extends StatefulWidget{
  const ClcPage ({super.key});
  @override 
  State<ClcPage> createState()=> _ClcPagState();
}
class _ClcPagState extends State<ClcPage>{
  dynamic displaytxt =20;
  Widget calcbtn(String bttxt, Color btcolor,Color txtcol) {
    return Container(
      margin: const EdgeInsets.all(0),
    child: ElevatedButton(
      onPressed: ()
      {
        calculation(bttxt);
        },
      style: ButtonStyle(
        backgroundColor: MaterialStateProperty.all(btcolor),
        padding: MaterialStateProperty.all(const EdgeInsets.all(15)),
        shape: MaterialStateProperty.all(RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(50),
        )),
      ),
      child: Text(
        bttxt,
        style: TextStyle(
          color: txtcol
        ),
      ),
    ),
    );
    
  }
  @override
  Widget build(BuildContext context)
  {
    return Scaffold(
      backgroundColor: Colors.black,
      appBar: AppBar(
        centerTitle: true,
        title: const Text('Калькулятор для рассчета стоимости'),
        backgroundColor: Colors.deepOrange.withOpacity(75) ,
      ),
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 5),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.end,
          children: <Widget>
          [
            SingleChildScrollView(
              scrollDirection: Axis.vertical,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.end,
                children: <Widget>
                [
                  Padding(padding: const EdgeInsets.all(10),
                    child: Text(
                        '$Text',
                      textAlign: TextAlign.left,
                      style: const TextStyle(
                        color: Colors.white,
                        fontSize: 85,
                      ),
                    ),

                  ),
                ],
              ),
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: <Widget>
              [
                calcbtn('C', Colors.black54, Colors.white),
                calcbtn('+/-', Colors.black54, Colors.white),
                calcbtn('%', Colors.black54, Colors.white),
                calcbtn('/', Colors.orange.shade700, Colors.white),
              ],
            ),
            const SizedBox(height: 10),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: <Widget>
                [calcbtn('7', Colors.black54, Colors.white),
        calcbtn('8', Colors.black54, Colors.white),
        calcbtn('9', Colors.black54, Colors.white),
        calcbtn('x', Colors.orange.shade700, Colors.white),
        ],),
            const SizedBox(height: 10),
            Row(mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: <Widget>
              [calcbtn('4', Colors.black54, Colors.white),
                calcbtn('5', Colors.black54, Colors.white),
                calcbtn('6', Colors.black54, Colors.white),
                calcbtn('-', Colors.orange.shade700, Colors.white),
              ],
            ),
            const SizedBox(height: 10),
            Row(mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: <Widget>
              [calcbtn('4', Colors.black54, Colors.white),
                calcbtn('5', Colors.black54, Colors.white),
                calcbtn('6', Colors.black54, Colors.white),
                calcbtn('-', Colors.orange.shade700, Colors.white),
              ],
            ),
            const SizedBox(height: 10),
            Row(mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: <Widget>
              [calcbtn('1', Colors.black54, Colors.white),
                calcbtn('2', Colors.black54, Colors.white),
                calcbtn('3', Colors.black54, Colors.white),
                calcbtn('+', Colors.orange.shade700, Colors.white),
              ],
            ),
            const SizedBox(height: 20),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: <Widget>
              [
              ElevatedButton(onPressed: () {
                calculation('0');
              },
                  child: const Text(
          '0',
                    style: TextStyle(
                      fontSize: 25,
                      color: Colors.white),),
              ),
                calcbtn('.', Colors.black54, Colors.white),
                calcbtn('=', Colors.black54, Colors.white),
              ],
            ),
          ],
        ),
      ),
    );

  }
  dynamic text='0';
  double numOne=0;
  double numTwo=0;
  dynamic result='';
  dynamic finalResulte='';
  dynamic opr='';
  dynamic preOpr='';
  void calculation(btnText)
  {
    if(btnText=='AC')
    {
      text='0';
       numOne=0;
       numTwo=0;
       result='';
       finalResulte='0';
       opr='';
      preOpr='';

    }
    else if (opr=='='&&btnText=='=') {
      if (preOpr == '+') {
        finalResulte = add();
      }
      else if (opr == '-') {
        finalResulte = sub();
      }

      else if (opr == '/') {
        finalResulte = div();
      }
      else if (opr == 'x') {
        finalResulte = mul();
      }
      else if (btnText == '+' ||
          btnText == '-' ||
          btnText == 'x' ||
          btnText == '/' ||
          btnText == '=') {
        if (numOne == 0) {
          numOne = double.parse(result);
        }
        else {
          numTwo = double.parse(result);
        }
        if (opr == '+') {
          finalResulte = add();
        }
        else if (opr == '-') {
          finalResulte = sub();
        }
        else if (opr == 'x') {
          finalResulte = mul();
        }
        else if (opr == '/') {
          finalResulte = div();
        }
        preOpr = opr;
        opr = btnText;
        result = '';
      }
      else if (btnText == '%') {
        result = numOne / 100;
        finalResulte = doesContainDecimal(result);
      }
      else if (btnText == '.') {
        if (!result.toString().contains('.')) {
          result = '$result.';
        }
        finalResulte = result;
      }
      else if (btnText == '+/-') {
        result.toString().startsWith('-')
            ? result = result.toString().substring(1) :
        result = '-$result';
        {
          result = '$result.';
        }
        finalResulte = result;
      }
      else {
        result = result + btnText;
        finalResulte = result;
      }
      setState(() {
       Text finalResulte;
      });
    }
String add(){
     result(numOne+numTwo).toString();
     numOne=double.parse(result);
     return doesContainDecimal(result);

}
    String sub(){
      result(numOne-numTwo).toString();
      numOne=double.parse(result);
      return doesContainDecimal(result);
    }
    String mul(){
      result(numOne*numTwo).toString();
      numOne=double.parse(result);
      return doesContainDecimal(result);

    }
    String div(){
      result(numOne/numTwo).toString();
      numOne=double.parse(result);
      return doesContainDecimal(result);
    }
    String doesContainDecimal(dynamic result){
      if(result.toString().contains('.'))
      {
        List<String> splitDecimal=result.toString().split('.');
        if (!(int.parse(splitDecimal[1])>0))
        {
          return result=splitDecimal[0].toString();
        }
      }
      return result;
    }

