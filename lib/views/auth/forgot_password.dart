import 'package:flutter/material.dart';

class ForgotPassword extends StatelessWidget {
  const ForgotPassword({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          elevation: 0,
          foregroundColor: Colors.black,
        ),
        body: SafeArea(
          child: Form(
              child: ListView(
            padding: EdgeInsets.symmetric(horizontal: 24),
            children: [
              Image.asset("assets/icon.png", height: 200),
              SizedBox(height: 20),
              TextFormField(
                  decoration: InputDecoration(
                border:
                    OutlineInputBorder(borderRadius: BorderRadius.circular(10)),
                labelText: "Email",
                prefixIcon: Icon(Icons.email),
              )),
              SizedBox(height: 20),
              const SizedBox(height: 26.0),
              TextButton(
                  onPressed: () {},
                  child: const Text(
                    "Reset Password",
                    style: TextStyle(color: Colors.white, fontSize: 20),
                  ),
                  style: TextButton.styleFrom(
                    backgroundColor: Colors.black,
                  )),
            ],
          )),
        ));
  }
}
