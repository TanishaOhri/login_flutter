import 'package:flutter/material.dart';
import 'package:login/sign/sign_up.dart';
import 'pages/login.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: LoginPage(),
      routes: {
        "/login": (context) => LoginPage(),
        "/sign": (context) => SignUp(),
      },
    );
  }
}
