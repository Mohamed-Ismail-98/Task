import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class Calc extends StatefulWidget {
   Calc({super.key});
   
  @override
  State<Calc> createState() => _CalcState();
}

class _CalcState extends State<Calc> {
  double num1=0;
  double num2=0;
  double result=1;
  TextEditingController number1Controller= TextEditingController();
  TextEditingController number2Controller= TextEditingController();

  @override
  Widget build(BuildContext context) {

    return SingleChildScrollView(
      child: Column(
          children: [
            SizedBox(height: 50,),
            Container(
              width: double.infinity,
              height: 335,
              decoration: const BoxDecoration(
                color: Colors.green,
                borderRadius: BorderRadius.only(bottomLeft: Radius.circular(20.0),bottomRight: Radius.circular(20.0))
              ),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.stretch,
                children: [
                Padding(
                  padding: const EdgeInsets.all(10.0),
                  child: TextFormField(
                    cursorColor: Colors.pink,
                    controller: number1Controller,
                    decoration: InputDecoration(
                        label: Text("num 1"),
                        suffixIcon: const Icon(Icons.numbers),
                        border: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(15),
                            borderSide: const BorderSide(color: Colors.red,width: 2)
                        ),
                        focusedBorder:  OutlineInputBorder(
                          borderSide: BorderSide(color: Colors.yellowAccent,width: 2),
                          borderRadius: BorderRadius.circular(17),
                        )
                    ),

                  ),
                ),
                SizedBox(height: 30,),
                Padding(
                  padding: const EdgeInsets.all(10.0),
                  child: TextFormField(
                    cursorColor: Colors.purple,
                    controller: number2Controller,
                    decoration: InputDecoration(
                        label: Text("num 2"),
                        suffixIcon: Icon(Icons.numbers),
                        border: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(17),
                            borderSide: const BorderSide(color: Colors.yellow,width: 2)
                        ),
                        focusedBorder:  OutlineInputBorder(
                          borderSide: BorderSide(color: Colors.blue,width: 2),
                          borderRadius: BorderRadius.circular(17),
                        )
                    ),

                  ),
                ),
              ],)
            ),
            SizedBox(height: 10,),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Container(width: 20,
                  height: 10,
                  decoration: const BoxDecoration(
                      color: Colors.green,
                  ),),
                Text("result =  $result"),
                Container(width: 20,
                  height: 10,
                  decoration: const BoxDecoration(
                    color: Colors.green,
                  ),),
              ],
            ),
            SizedBox(height: 20,),
            Container(
              width: double.infinity,
              height: 334,
              decoration: const BoxDecoration(
                  color: Colors.green,
                  borderRadius: BorderRadius.only(topLeft: Radius.circular(20.0),topRight: Radius.circular(20.0))
              ),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.stretch,
                children: [
                  IconButton(onPressed: (){

                    setState(() {
                      num1=double.parse(number1Controller.text);
                      num2=double.parse(number2Controller.text);
                      result=num1+num2;
                    });
                  }, icon: Icon(CupertinoIcons.plus,)),
                  IconButton(onPressed: (){
                    setState(() {
                      num1=double.parse(number1Controller.text);
                      num2=double.parse(number2Controller.text);
                      result=num1-num2;
                    });
                  }, icon: Icon(CupertinoIcons.minus)),
                  IconButton(onPressed: (){
                    setState(() {
                      num1=double.parse(number1Controller.text);
                      num2=double.parse(number2Controller.text);
                      result=num1*num2;
                    });
                  }, icon: Icon(CupertinoIcons.multiply)),
                  IconButton(onPressed: (){
                    setState(() {
                      num1=double.parse(number1Controller.text);
                      num2=double.parse(number2Controller.text);
                      result=num1/num2.round();
                    });
                  }, icon: Icon(CupertinoIcons.divide)),
                ],
              ),
            )

          ],

      ),
    );
  }
}
