import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

class HalamanLogin extends StatefulWidget {
  @override
  _HalamanLoginState createState() => _HalamanLoginState();
}

class _HalamanLoginState extends State<HalamanLogin> {
  GlobalKey<FormState> formKey = GlobalKey<FormState>();
  GlobalKey<ScaffoldState> scaffoldKey = GlobalKey<ScaffoldState>();

  void validateInput() {
    FormState form = this.formKey.currentState;
    ScaffoldState scaffold = this.scaffoldKey.currentState;

    SnackBar message = SnackBar(
      content: Text(
        'Data terkirim',
        style: TextStyle(color: Colors.white70),
      ),
    );

    if (form.validate()) {
      scaffold.showSnackBar(message);
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      key: scaffoldKey,
      resizeToAvoidBottomPadding: false,
      body: Container(
        color: Colors.teal[700],
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Container(
              height: 70.0,
            ),
            ClipRRect(
              borderRadius: BorderRadius.circular(120.0),
              child: Image.asset(
                'assets/images/faza-backgrond.jpg',
                width: 120.0,
                height: 120.0,
              ),
            ),
            Container(
              height: 25.0,
            ),
            Text(
              'Log In',
              style: TextStyle(
                fontSize: 40.0,
                fontWeight: FontWeight.w800,
                color: Colors.white,
                fontFamily: 'Poppins',
              ),
            ),
            Container(
              height: 30.0,
            ),
            Container(
              margin: EdgeInsets.fromLTRB(20.0, 0, 20.0, 0),
              child: Column(
                children: [
                  Form(
                    key: formKey,
                    child: Column(
                      children: [
                        TextFormField(
                          decoration: InputDecoration(
                            fillColor: Colors.white,
                            filled: true,
                            helperText: 'example@example.com',
                            helperStyle: TextStyle(color: Colors.white24),
                            border: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(30.0),
                            ),
                            prefixIcon: Container(
                              padding: EdgeInsets.only(left: 30.0, right: 15.0),
                              child: Icon(
                                Icons.email_outlined,
                                color: Colors.grey[400],
                              ),
                            ),
                            hintText: 'Email Address',
                            hintStyle: TextStyle(
                              fontSize: 16.0,
                              fontFamily: 'Poppins',
                              color: Colors.grey.withOpacity(0.6),
                            ),
                          ),
                          keyboardType: TextInputType.text,
                          validator: (String value) {
                            if (value.isEmpty) {
                              return 'Email wajib di isi!';
                            }
                          },
                        ),
                        Container(
                          height: 10.0,
                        ),
                        TextFormField(
                          decoration: InputDecoration(
                            fillColor: Colors.white,
                            filled: true,
                            border: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(30.0),
                            ),
                            prefixIcon: Container(
                              padding: EdgeInsets.only(left: 30.0, right: 15.0),
                              child: Icon(
                                Icons.lock_outline,
                                color: Colors.grey[400],
                              ),
                            ),
                            hintText: 'Password',
                            hintStyle: TextStyle(
                              fontSize: 16.0,
                              fontFamily: 'Poppins',
                              color: Colors.grey.withOpacity(0.6),
                            ),
                          ),
                          obscureText: true,
                          keyboardType: TextInputType.text,
                          validator: (String value) {
                            if (value.isEmpty) {
                              return 'Password wajib di isi!';
                            }
                          },
                        ),
                      ],
                    ),
                  ),
                  Container(
                    height: 25.0,
                  ),
                  Container(
                    child: Container(
                      child: FlatButton(
                        color: Colors.teal,
                        child: Text(
                          'LOGIN',
                          style: TextStyle(
                            fontSize: 24.0,
                            fontWeight: FontWeight.w700,
                            fontFamily: 'Poppins',
                          ),
                        ),
                        textColor: Colors.white,
                        padding: EdgeInsets.symmetric(
                            horizontal: 140.0, vertical: 18.0),
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(35.0),
                        ),
                        splashColor: Colors.teal[700],
                        onPressed: validateInput,
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
            ),
            Container(
              height: 15.0,
            ),
            Text(
              'Forget Password ?',
              style: TextStyle(
                color: Colors.white60,
                fontFamily: 'Poppins',
              ),
            ),
            Container(
              height: 35.0,
            ),
            Text(
              'Register Here',
              style: TextStyle(
                color: Colors.white,
                fontSize: 24.0,
                fontWeight: FontWeight.w700,
                fontFamily: 'Poppins',
              ),
            ),
          ],
        ),
      ),
    );
  }
}
