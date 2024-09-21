
import 'package:flutter/material.dart';

class Calculate extends StatelessWidget {
  Calculate({super.key});


  @override
  Widget build(BuildContext context) {
    Map arg=ModalRoute.of(context)!.settings.arguments as Map;

    return Padding(
          padding: const EdgeInsets.all(8.0),
          child: Column(
            children: [
              Text("Your Result",style: TextStyle(fontSize: 27,fontWeight: FontWeight.bold),),
              SizedBox(height: 30,),
              Expanded(
                child: Padding(
                  padding: const EdgeInsets.all(10),
                  child: Container(
                    width: double.infinity,
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(20)
                    ),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Text("'State: ${arg[2]}'",style: TextStyle(fontSize: 27,fontWeight: FontWeight.bold,color: arg[3]),),
                        SizedBox(height: 30),
                        Text("bmi: ${arg[1]} %'",style: TextStyle(fontSize: 27,fontWeight: FontWeight.bold,color: arg[3]),),
                        SizedBox(height: 30),


                      ],
                    ),
                  ),
                ),
              ),
              Container(
                width: double.infinity,
                child: MaterialButton(
                  color: Colors.red,
                  onPressed: () {

                  },
                  child: Text(
                    "Re-Calculate",
                    style: TextStyle(
                        fontSize: 25,
                        color: Colors.white
                    ),
                  ),
                ),
              )
            ],
          ),

    );
  }

}
