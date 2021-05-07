import 'package:flutter/material.dart';
import 'package:flutter_signin_button/flutter_signin_button.dart';

class SignUp extends StatefulWidget {
  @override
  _SignUpState createState() => _SignUpState();
}

class _SignUpState extends State<SignUp> {
  @override
  Widget build(BuildContext context) {
    TextEditingController _usercontroller = TextEditingController();
    TextEditingController _passcontroller = TextEditingController();
    return Scaffold(
      appBar: AppBar(
        title: Text(
          "Sign Up",
          style: TextStyle(
            color: Colors.white,
          ),
        ),
        elevation: 2,
        backgroundColor: Colors.black45,
      ),
      body: Theme(
        data: ThemeData(
          accentColor: Colors.grey[200],
        ),
        child: SingleChildScrollView(
          child: Center(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                SizedBox(
                  height: 15,
                ),
                Container(
                  child: Text(
                    "Please fill the details to create an account",
                    style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
                  ),
                ),
                SizedBox(
                  height: 5,
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
                    decoration: InputDecoration(
                        hintText: "Enter your First Name",
                        hintStyle: TextStyle(color: Colors.black),
                        border: InputBorder.none),
                  ),
                ),
                SizedBox(
                  height: 5,
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
                    decoration: InputDecoration(
                        hintText: "Enter your Last Name",
                        hintStyle: TextStyle(color: Colors.black),
                        border: InputBorder.none),
                  ),
                ),
                SizedBox(
                  height: 5,
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
                    controller: _usercontroller,
                    decoration: InputDecoration(
                        hintText: "Enter your email",
                        icon: Icon(Icons.email),
                        hintStyle: TextStyle(color: Colors.black),
                        border: InputBorder.none),
                  ),
                ),
                SizedBox(
                  height: 5,
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
                    controller: _passcontroller,
                    decoration: InputDecoration(
                        hintText: "Enter your password",
                        icon: Icon(Icons.lock),
                        hintStyle: TextStyle(color: Colors.black),
                        border: InputBorder.none),
                  ),
                ),
                SizedBox(
                  height: 5,
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
                    controller: _passcontroller,
                    decoration: InputDecoration(
                        hintText: "Re-Enter your password",
                        icon: Icon(Icons.lock),
                        hintStyle: TextStyle(color: Colors.black),
                        border: InputBorder.none),
                  ),
                ),
                SizedBox(
                  height: 5,
                ),
                RaisedButton(
                  onPressed: () {},
                  child: Text(
                    "Sign Up",
                    style: TextStyle(fontSize: 20),
                  ),
                  color: Colors.blue,
                ),
                SizedBox(
                  height: 5,
                ),
                Container(
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      Text(
                        "Already Signed In? ",
                        style: TextStyle(fontSize: 20),
                      ),
                      RaisedButton(
                        onPressed: () {
                          Navigator.pushNamed(context, "/login");
                        },
                        child: Text(
                          "Sign In",
                          style: TextStyle(fontSize: 20),
                        ),
                        color: Colors.white,
                      )
                    ],
                  ),
                ),
                SizedBox(
                  height: 8,
                ),
                Text("Or"),
                SizedBox(
                  height: 8,
                ),
                Column(
                  children: [
                    SignInButton(
                      Buttons.GoogleDark,
                      onPressed: () {},
                    ),
                    SignInButton(
                      Buttons.Facebook,
                      onPressed: () {},
                    ),
                    SignInButton(
                      Buttons.Twitter,
                      onPressed: () {},
                    ),
                  ],
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}
