import 'package:flutter/material.dart';
import 'dart:ui';

import 'package:uas_login_app/screens/login-screen.dart';

class MyHomePage extends StatefulWidget {
  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        child: Container(
          color: Colors.orange[700],
          child: Column(
            children: <Widget>[
              SizedBox(
                height: 140.0,
              ),
              Column(
                children: <Widget>[
                  Row(
                    children: <Widget>[
                      Padding(
                        padding:
                            const EdgeInsets.fromLTRB(20.0, 0.0, 20.0, 20.0),
                        child: Text(
                          'Excited?!',
                          style: TextStyle(
                            letterSpacing: 0,
                            fontSize: 54.0,
                            fontWeight: FontWeight.bold,
                            color: Colors.white,
                            fontFamily: 'Poppins',
                          ),
                        ),
                      ),
                    ],
                  ),
                  Column(
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: <Widget>[
                      Row(
                        children: <Widget>[
                          Padding(
                            padding: const EdgeInsets.fromLTRB(
                                20.0, 0.0, 20.0, 10.0),
                            child: Container(
                              child: Text(
                                'You Should Be!!',
                                style: TextStyle(
                                  fontSize: 38.0,
                                  fontWeight: FontWeight.w700,
                                  color: Colors.white.withOpacity(0.9),
                                  fontFamily: 'Poppins',
                                ),
                              ),
                            ),
                          ),
                        ],
                      ),
                      Row(
                        children: <Widget>[
                          Padding(
                            padding: const EdgeInsets.fromLTRB(
                                20.0, 20.0, 20.0, 10.0),
                            child: Text(
                              'Sign In if you already have an account with us',
                              style: TextStyle(
                                color: Colors.white60,
                                fontSize: 14.0,
                                fontFamily: 'Poppins',
                              ),
                            ),
                          ),
                        ],
                      ),

                      //Sign in
                      Container(
                        child: Container(
                          child: FlatButton(
                            color: Colors.white,
                            child: Text(
                              'Sign In',
                              style: TextStyle(
                                fontSize: 20.0,
                                color: Colors.orange[900].withOpacity(0.7),
                                fontFamily: 'Poppins',
                                fontWeight: FontWeight.w600,
                              ),
                            ),
                            splashColor: Colors.orange[100],
                            padding:
                                EdgeInsets.fromLTRB(140.0, 20.0, 140.0, 20.0),
                            onPressed: () {
                              Navigator.push(
                                context,
                                MaterialPageRoute(
                                  builder: (context) {
                                    return HalamanLogin();
                                  },
                                ),
                              );
                            },
                            shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(35.0),
                            ),
                          ),
                        ),
                        decoration: BoxDecoration(
                          borderRadius: const BorderRadius.all(
                            Radius.circular(20.0),
                          ),
                          boxShadow: [
                            BoxShadow(
                              color: Colors.black87.withOpacity(0.2),
                              spreadRadius: 2,
                              blurRadius: 10,
                              offset: Offset(0, 3),
                            ),
                          ],
                        ),
                      ),

                      Container(
                        margin: EdgeInsets.fromLTRB(20.0, 25.0, 20.0, 10.0),
                        child: Row(
                          children: [
                            Text(
                              'Or sign up if you new!',
                              style: TextStyle(
                                color: Colors.white60,
                                fontSize: 14.0,
                                fontFamily: 'Poppins',
                              ),
                            ),
                          ],
                        ),
                      ),

                      // Sign Up
                      Container(
                        child: Container(
                          child: FlatButton(
                            color: Colors.white,
                            child: Text(
                              'Sign Up',
                              style: TextStyle(
                                fontSize: 20.0,
                                color: Colors.orange[900].withOpacity(0.7),
                                fontFamily: 'Poppins',
                                fontWeight: FontWeight.w600,
                              ),
                            ),
                            splashColor: Colors.orange[100],
                            padding:
                                EdgeInsets.fromLTRB(138.0, 20.0, 138.0, 20.0),
                            onPressed: () {},
                            shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(35.0),
                            ),
                          ),
                        ),
                        decoration: BoxDecoration(
                          borderRadius: const BorderRadius.all(
                            Radius.circular(20.0),
                          ),
                          boxShadow: [
                            BoxShadow(
                              color: Colors.black87.withOpacity(0.2),
                              spreadRadius: 2,
                              blurRadius: 10,
                              offset: Offset(0, 3),
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                ],
              )
            ],
          ),
        ),
      ),
    );
  }
}
