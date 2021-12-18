import 'package:famlicious/views/home_view.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import 'views/auth/login_view.dart';

void main() {
  runApp(const FamliciousApp());
}

class FamliciousApp extends StatelessWidget {
  const FamliciousApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Famlicious App',
      theme: ThemeData(
          scaffoldBackgroundColor: Colors.white,
          appBarTheme: AppBarTheme(
            color: Colors.white,
          )),
      home: LoginView(),
    );
  }
}
