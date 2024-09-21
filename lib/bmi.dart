import 'dart:math';

import 'package:flutter/material.dart';

class Bmi extends StatefulWidget {
  Bmi({super.key});

  @override
  State<Bmi> createState() => _BmiState();
}

class _BmiState extends State<Bmi> {


  int weight = 60;
  double height = 100;
  int age = 1;
  // Color bmiColor = Colors.black;
  @override
  Widget build(BuildContext context) {
    double wid = MediaQuery.of(context).size.width;
    String resultMessage = "";
    Widget resultMessage1;
    double bmi;
    Color i;
    var resultColor=[Colors.blue,Colors.green,Colors.yellow,Colors.orange,Colors.red];
    return Padding(
          padding: const EdgeInsets.all(10.0),
          child: Column(
            children: [
              Expanded(
                child: Row(
                  children: [
                    Expanded(
                      child: Container(
                        width: wid * 0.5,
                        height: 100,
                        decoration: BoxDecoration(
                          color: Colors.green,
                          borderRadius: BorderRadius.circular(30),
                        ),
                        child: const Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            InkWell(

                              child: Icon(
                                Icons.male_outlined,
                                size: 70,
                              ),

                            ),
                            Text("Male")
                          ],
                        ),
                      ),
                    ),
                    const SizedBox(
                      width: 10,
                    ),
                    Expanded(
                      child: Container(
                        width: wid * 0.5,
                        height: 100,
                        decoration: BoxDecoration(
                          color: Colors.red,
                          borderRadius: BorderRadius.circular(30),
                        ),
                        child: const Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            InkWell(
                              child: Icon(
                                Icons.female_outlined,
                                size: 70,
                              ),
                            ),
                            Text("Female")
                          ],
                        ),
                      ),
                    )
                  ],
                ),
              ),
              Expanded(
                child: Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 10),
                  child: Container(
                    width: wid,
                    height: 80,
                    decoration: BoxDecoration(
                        color: Colors.grey,
                        borderRadius: BorderRadius.circular(30)),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        const Text(
                          "Height",
                          style: TextStyle(
                              fontSize: 28, fontWeight: FontWeight.bold),
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          crossAxisAlignment: CrossAxisAlignment.end,
                          children: [
                            Text(
                              "${height.round()}",
                              style: TextStyle(
                                  fontSize: 25, fontWeight: FontWeight.bold),
                            ),
                            Text("CM"),
                          ],
                        ),
                        Slider(
                            value: height,
                            min: 100,
                            max: 200,
                            onChanged: (double val) {
                              setState(() {
                                height = val;

                              });
                            }
                        ),
                      ],
                    ),
                  ),
                ),
              ),
              Expanded(
                child: Padding(
                  padding: const EdgeInsets.all(10),
                  child: Row(
                    children: [
                      Expanded(
                        child: Container(
                          width: wid * 0.5,
                          height: 100,
                          decoration: BoxDecoration(
                            color: Colors.green,
                            borderRadius: BorderRadius.circular(30),
                          ),
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.center,
                            crossAxisAlignment: CrossAxisAlignment.center,
                            children: [
                              const Text(
                                "Weight",
                                style: TextStyle(fontWeight: FontWeight.bold),
                              ),
                              Text("$weight"),
                              Row(
                                crossAxisAlignment: CrossAxisAlignment.center,
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: [
                                  IconButton(
                                      onPressed: () {
                                        weight++;
                                        setState(() {});
                                      },
                                      icon: Container(
                                        width: 35,
                                        height: 35,
                                        decoration: BoxDecoration(
                                            color: Colors.yellowAccent,
                                            borderRadius:
                                            BorderRadius.circular(50)),
                                        child: const Icon(Icons.add, size: 20),
                                      )),
                                  IconButton(
                                      onPressed: () {
                                        weight--;
                                        setState(() {});
                                      },
                                      icon: Container(
                                        width: 35,
                                        height: 35,
                                        decoration: BoxDecoration(
                                            color: Colors.yellowAccent,
                                            borderRadius:
                                            BorderRadius.circular(50)),
                                        child: const Icon(Icons.remove, size: 20),
                                      )),
                                ],
                              )
                            ],
                          ),
                        ),
                      ),
                      const SizedBox(
                        width: 15,
                      ),
                      Expanded(
                        child: Container(
                          width: wid * 0.5,
                          height: 100,
                          decoration: BoxDecoration(
                            color: Colors.green,
                            borderRadius: BorderRadius.circular(30),
                          ),
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              const Text(
                                "Age",
                                style: TextStyle(fontWeight: FontWeight.bold),
                              ),
                              Text("$age"),
                              Row(
                                crossAxisAlignment: CrossAxisAlignment.center,
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: [
                                  IconButton(
                                      onPressed: () {
                                        age++;
                                        setState(() {});
                                      },
                                      icon: Container(
                                        width: 35,
                                        height: 35,
                                        decoration: BoxDecoration(
                                            color: Colors.yellowAccent,
                                            borderRadius:
                                            BorderRadius.circular(50)),
                                        child: const Icon(Icons.add, size: 20),
                                      )),
                                  IconButton(
                                      onPressed: () {
                                        age--;
                                        setState(() {});
                                      },
                                      icon: Container(
                                        width: 35,
                                        height: 35,
                                        decoration: BoxDecoration(
                                            color: Colors.yellowAccent,
                                            borderRadius:
                                            BorderRadius.circular(50)),
                                        child: const Icon(Icons.remove, size: 20),
                                      )),
                                ],
                              )
                            ],
                          ),
                        ),
                      ),
                    ],

                  ),
                ),
              ),
              Container(
                width: double.infinity,
                child: MaterialButton(
                  color: Colors.yellow,
                  onPressed: () {
                    bmi = weight / pow(height / 100, 2);
                    if (bmi < 18.5) {
                      resultMessage ='نحيف';
                      i=Colors.blue;
                    } else if (bmi >= 18.5 && bmi < 24.9) {
                      resultMessage='وزن صحي';
                      i=Colors.green;
                    } else if (bmi >= 25 && bmi < 29.9) {
                      resultMessage = 'زيادة في الوزن';
                      i=Colors.yellow;
                    } else if (bmi >= 30 && bmi < 34.9) {
                      resultMessage = 'سمنة';
                      i=Colors.orange;
                    }else{
                      resultMessage ='خطر';
                       i=Colors.red;
                    }
                    Map dataToSend = {1: "${bmi.toStringAsFixed(1)}", 2: "$resultMessage",3:i};
                    Navigator.pushNamed(context, "calculate",arguments: dataToSend);
                    // Navigator.of(context).push(MaterialPageRoute(builder: (_) => Calculate()));


                  },
                  child: const Text(
                    "Calculate",
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
