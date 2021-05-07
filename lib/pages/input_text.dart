import 'package:flutter/material.dart';

class InputField extends StatefulWidget {
  @override
  _InputFieldState createState() => _InputFieldState();
}

class _InputFieldState extends State<InputField> {
  TextEditingController _usernamecontroller = TextEditingController();
  TextEditingController _passwordcontroller = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Container(
          padding: EdgeInsets.all(8),
          decoration: BoxDecoration(
            border: Border(
              bottom: BorderSide(
                color: Colors.grey[200],
              ),
            ),
          ),
          child: TextField(
            controller: _usernamecontroller,
            decoration: InputDecoration(
                hintText: "Enter your username",
                icon: Icon(Icons.person),
                hintStyle: TextStyle(color: Colors.grey[700]),
                border: InputBorder.none),
          ),
        ),
        SizedBox(
          height: 20,
        ),
        Container(
          padding: EdgeInsets.all(8),
          decoration: BoxDecoration(
            border: Border(
              bottom: BorderSide(
                color: Colors.grey[200],
              ),
            ),
          ),
          child: TextField(
            controller: _passwordcontroller,
            decoration: InputDecoration(
                hintText: "Enter your password",
                icon: Icon(Icons.lock_rounded),
                hintStyle: TextStyle(color: Colors.grey[700]),
                border: InputBorder.none),
            obscureText: true,
          ),
        ),
      ],
    );
  }
}
