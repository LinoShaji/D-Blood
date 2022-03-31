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
      body: Container(height: 900,
        decoration: BoxDecoration(
            color: Color(0xffe8e8ea),
            borderRadius: BorderRadius.circular(15),
            boxShadow: const [
              BoxShadow(
                color: Colors.grey,
                blurRadius: 20,
              )
            ]),
        margin: EdgeInsets.all(15),
        child: SingleChildScrollView(
          child: Column(children: [
            Container(
                margin: EdgeInsets.only(left: 100, top: 20),
                child: ClipRRect(
                  borderRadius: BorderRadius.only(
                      bottomLeft: Radius.circular(150),
                      bottomRight: Radius.circular(100)),
                  child: Image.asset('lib/assets/pageone.jpg'),
                )),
            SizedBox(
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
                  child: Text('Login',
                      style: TextStyle(color: Colors.black, fontSize: 25)),
                ),
                TextButton(
                    onPressed: () {
                      setState(() {
                        isLogin = true;
                      });
                    },
                    child: Text(
                      'SignUp',
                      style: TextStyle(color: Colors.black, fontSize: 25),
                    )),
              ],
            ),
            SizedBox(height: 20),
            //RichText(text: TextSpan(text: 'Login',style: TextStyle()))
            isLogin == false
                ? Column(
                    children: [
                      Container(
                        height: 50,
                        width: 450,
                        margin: EdgeInsets.only(left: 20, right: 20),
                        child: TextFormField(
                          decoration: InputDecoration(fillColor: Colors.white,
                              border: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(25.0),
                            borderSide: new BorderSide(),
                          )),
                        ),
                      ),
                      SizedBox(height: 20),
                      Container(
                        height: 50,
                        width: 450,
                        margin: EdgeInsets.only(left: 20, right: 20),
                        child: TextFormField(
                          decoration: InputDecoration(
                              border: OutlineInputBorder(
                                borderRadius: BorderRadius.circular(25.0),
                                borderSide: new BorderSide(),
                              )),
                        ),
                      )],
                  )
                : Text('SighUpWidget')
          ]),
        ),
      ),
    );
  }
}
