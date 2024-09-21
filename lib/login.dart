import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';

class Login extends StatefulWidget {
  const Login({super.key});

  @override
  State<Login> createState() => _LoginState();
}

class _LoginState extends State<Login> {
  String title = "";
  bool obscure = true;
  TextEditingController email = TextEditingController();
  TextEditingController password = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Container(
          width: double.infinity,
          color: Colors.orange,
      
      
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              SizedBox(height: 90,),
              Padding(
                padding: const EdgeInsets.all(15.0),
                child: Text(
                  "Login",
                  style: TextStyle(
                      fontSize: 30,
                      color: Colors.white,
                      fontWeight: FontWeight.w500),
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(15.0),
                child: Text(
                  "Welcome Back",
                  style: TextStyle(
                      fontSize: 15,
                      color: Colors.white,
                      fontWeight: FontWeight.w300),
                ),
              ),
              SizedBox(height: 10,),
              Container(
                width: double.infinity,
                 height: 533,
                decoration: const BoxDecoration(
                  // boxShadow: BoxShadow(color: Colors.orangeAccent,
                  //   offset: Offset.zero,
                  //   blurRadius: 2.0,
                  //   blurStyle: BlurStyle.normal,),
                    color: Colors.white,
                    borderRadius: BorderRadius.only(
                        topLeft: Radius.circular(40.0),
                        topRight: Radius.circular(40.0))),
                child: Column(
                  children: [
                    SizedBox(height: 100,),
                    Padding(
                      padding: const EdgeInsets.all(10.0),
                      child: TextFormField(
                        cursorColor: Colors.pink,
                        controller: email,
                        decoration: InputDecoration(
                            label: RichText(
                              text: TextSpan(children: [
                                TextSpan(
                                    text: "Email",
                                    style: TextStyle(
                                        fontWeight: FontWeight.bold,
                                        color: Colors.black)),
                                TextSpan(
                                    text: "  *",
                                    style: TextStyle(
                                        fontWeight: FontWeight.bold,
                                        color: Colors.red)),
                              ]),
                            ),
                            suffixIcon: const Icon(Icons.email),
                            border: OutlineInputBorder(
                                borderRadius: BorderRadius.circular(2),
                                borderSide: const BorderSide(
                                    color: Colors.red, width: 2)),
                            focusedBorder: OutlineInputBorder(
                              borderSide:
                                  BorderSide(color: Colors.green, width: 2),
                              borderRadius: BorderRadius.circular(17),
                            )),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.all(10.0),
                      child: TextFormField(
                        cursorColor: Colors.purple,
                        controller: password,
                        obscureText: obscure,
                        decoration: InputDecoration(
                            label: RichText(
                              text: TextSpan(children: [
                                TextSpan(
                                    text: "Password",
                                    style: TextStyle(
                                        fontWeight: FontWeight.bold,
                                        color: Colors.black)),
                                TextSpan(
                                    text: "  *",
                                    style: TextStyle(
                                        fontWeight: FontWeight.bold,
                                        color: Colors.red)),
                              ]),
                            ),
                            suffixIcon: IconButton(
                                onPressed: () {
                                  setState(() {
                                    obscure = !obscure;
                                  });
                                },
                                icon: obscure
                                    ? Icon(Icons.visibility_off)
                                    : Icon(Icons.visibility_outlined)),
                            border: OutlineInputBorder(
                                borderRadius: BorderRadius.circular(2),
                                borderSide: const BorderSide(
                                    color: Colors.yellow, width: 2)),
                            focusedBorder: OutlineInputBorder(
                              borderSide:
                                  BorderSide(color: Colors.green, width: 2),
                              borderRadius: BorderRadius.circular(17),
                            )),
                      ),
                    ),
                    SizedBox(height: 10,),
                    Text('Forget Password?'),
                    SizedBox(height: 10,),
                    Container(
                      width: 100,
                      height: 30,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(20)
                      ),
                      child: MaterialButton(
                          color: Colors.orange,
                          child: Text("Login",style: TextStyle(color: Colors.white),),
                          onPressed: () {
                            setState(() {
                              title = email.text;
                            });
                          }),
                    ),
                    SizedBox(height: 20,),
                    Text('Continue will social media'),
                    SizedBox(height: 20,),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: [
                      MaterialButton(onPressed: (){},child: Text('Facebook',style: TextStyle(color: Colors.white),),color: Colors.blue,),
                      MaterialButton(onPressed: (){},child: Text('Github',style: TextStyle(color: Colors.white),),color: Colors.black,),
                    ],)
                  ],
                ),
              )
            ],
          ),
      
      ),
    );
  }
}
