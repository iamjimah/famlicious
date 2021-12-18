import 'package:flutter/material.dart';
import 'package:unicons/unicons.dart';

class CreateAccount extends StatelessWidget {
  const CreateAccount({Key? key}) : super(key: key);

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
              ClipRRect(
                  borderRadius: BorderRadius.circular(90),
                  child: Image.asset("assets/avatar.png",
                      height: 130, width: 130)),
              TextButton.icon(
                  onPressed: () {},
                  icon: Icon(UniconsLine.camera),
                  label: Text("Upload Profile picture")),
              SizedBox(height: 20),
              TextFormField(
                  decoration: InputDecoration(
                border:
                    OutlineInputBorder(borderRadius: BorderRadius.circular(10)),
                labelText: "FullName",
                prefixIcon: Icon(Icons.person),
              )),
              SizedBox(height: 20),
              TextFormField(
                  decoration: InputDecoration(
                border:
                    OutlineInputBorder(borderRadius: BorderRadius.circular(10)),
                labelText: "Email",
                prefixIcon: Icon(Icons.email),
              )),
              SizedBox(height: 20),
              TextFormField(
                decoration: InputDecoration(
                  border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(10)),
                  labelText: "Password",
                  prefixIcon: Icon(Icons.lock),
                ),
                obscureText: true,
              ),
              const SizedBox(height: 26.0),
              TextButton(
                  onPressed: () {},
                  child: Text(
                    "Create Account",
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
