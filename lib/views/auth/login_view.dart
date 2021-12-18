import 'package:flutter/material.dart';

import 'create_acount.dart';
import 'forgot_password.dart';

class LoginView extends StatelessWidget {
  const LoginView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: SafeArea(
      child: Form(
          child: ListView(
        padding: EdgeInsets.symmetric(horizontal: 24),
        children: [
          Image.asset("assets/icon.png", height: 200),
          SizedBox(height: 20),
          TextFormField(
              decoration: InputDecoration(
            border: OutlineInputBorder(borderRadius: BorderRadius.circular(10)),
            labelText: "Email",
            prefixIcon: Icon(Icons.email),
          )),
          SizedBox(height: 20),
          TextFormField(
            decoration: InputDecoration(
              border:
                  OutlineInputBorder(borderRadius: BorderRadius.circular(10)),
              labelText: "Password",
              prefixIcon: Icon(Icons.lock),
            ),
            obscureText: true,
          ),
          const SizedBox(height: 26.0),
          Align(
            alignment: Alignment.centerRight,
            child: TextButton(
                onPressed: () {
                  Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: (context) => ForgotPassword()));
                },
                child: Text(" Forgot Password? reset it",
                    style: TextStyle(color: Colors.black))),
          ),
          TextButton(
              onPressed: () {},
              child: Text(
                "Login",
                style: TextStyle(color: Colors.white, fontSize: 20),
              ),
              style: TextButton.styleFrom(
                backgroundColor: Colors.black,
              )),
          SizedBox(height: 26),
          TextButton(
              onPressed: () {
                Navigator.push(context,
                    MaterialPageRoute(builder: (context) => CreateAccount()));
              },
              child: Text(
                " New Here? Create An Account ",
                style: TextStyle(color: Colors.black),
              ))
        ],
      )),
    ));
  }
}
