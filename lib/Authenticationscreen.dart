import 'dart:ui';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class AuthScreen extends StatefulWidget {
  const AuthScreen({Key? key}) : super(key: key);

  @override
  State<AuthScreen> createState() => _AuthScreenState();
}

class _AuthScreenState extends State<AuthScreen> {
  bool? isLogin;

  TextEditingController nameTextEditingController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Container(
        height: 900,
        decoration: BoxDecoration(
            color: const Color(0xffe8e8ea),
            borderRadius: BorderRadius.circular(15),
            boxShadow: const [
              BoxShadow(
                color: Colors.grey,
                blurRadius: 20,
              )
            ]),
        margin: const EdgeInsets.all(15),
        child: SingleChildScrollView(
          child: Column(children: [
            Container(
                margin: const EdgeInsets.only(left: 150, top: 20),
                child: ClipRRect(
                  borderRadius: const BorderRadius.only(
                      bottomLeft: Radius.circular(150),
                      bottomRight: Radius.circular(100)),
                  child: Image.asset('lib/assets/pageone.jpg', height: 200),
                )),
            const SizedBox(
              height: 100,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                TextButton(
                    onPressed: () {
                      setState(() {
                        isLogin = false;
                      });
                    },
                    child: RichText(
                      text: const TextSpan(children: <TextSpan>[
                        TextSpan(
                          text: "L",
                          style: TextStyle(color: Colors.black,fontSize: 23,fontWeight: FontWeight.bold),
                        ),
                        TextSpan(text: "o",style: TextStyle(color: Colors.red,fontSize: 23,fontWeight: FontWeight.bold)),
                        TextSpan(text: "g",style: TextStyle(color: Colors.black,fontSize: 23,fontWeight: FontWeight.bold)),
                        TextSpan(text: "i",style: TextStyle(color: Colors.black,fontSize: 23,fontWeight: FontWeight.bold)),
                        TextSpan(text: "n",style: TextStyle(color: Colors.black,fontSize: 23,fontWeight: FontWeight.bold))
                      ]),
                    )),
                TextButton(
                    onPressed: () {
                      setState(() {
                        isLogin = true;
                      });
                    },
                    child: const Text(
                      'Sign Up',
                      style: TextStyle(color: Colors.black, fontSize: 23, fontWeight: FontWeight.bold),
                    )),
              ],
            ),
            const SizedBox(height: 23),
            //RichText(text: TextSpan(text: 'Login',style: TextStyle()))
            isLogin == false
                ? Column(
                    children: [
                      Container(
                        height: 50,
                        width: 450,
                        margin: const EdgeInsets.only(left: 20, right: 20),
                        child: TextField(
                          decoration: InputDecoration(
                            filled: true,
                            fillColor: Colors.white,
                            hintText: 'Username',
                            hintStyle: const TextStyle(
                              color: Colors.grey,
                              fontWeight: FontWeight.w800,
                              fontSize: 18,
                            ),
                            icon: const Icon(Icons.supervised_user_circle),
                            border: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(15.0),
                              borderSide: const BorderSide(),
                            ),
                          ),
                        ),
                      ),
                      const SizedBox(height: 23),
                      Container(
                        height: 50,
                        width: 450,
                        margin: const EdgeInsets.only(left: 20, right: 20),
                        child: TextFormField(
                          decoration: InputDecoration(
                            icon: Icon(Icons.lock),
                              hintText: 'Password',
                              hintStyle: const TextStyle(
                                color: Colors.grey,
                                fontWeight: FontWeight.w800,
                                fontSize: 18,
                              ),
                              filled: true,
                              fillColor: Colors.white,
                              border: OutlineInputBorder(
                                borderRadius: BorderRadius.circular(15.0),
                                borderSide: new BorderSide(),
                              )),
                        ),
                      ),
                      TextButton(onPressed: (){}, child: Text('Forgot Password?',style: TextStyle(color: Colors.grey),textAlign: TextAlign.right,))
                    ],
                  )
                : const Text('SighUpWidget')
          ]),
        ),
      ),
    );
  }
}
