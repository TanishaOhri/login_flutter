import 'package:flutter/material.dart';
import 'package:flutter_signin_button/button_list.dart';
import 'package:flutter_signin_button/button_view.dart';
import 'package:login/pages/input_text.dart';
import 'package:login/sign/sign_up.dart';

class InputWrapper extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Column(
          children: [
            SizedBox(
              height: 30,
            ),
            Container(
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(10),
              ),
              child: InputField(),
            ),
            SizedBox(
              height: 20,
            ),
            FlatButton(
              onPressed: () {},
              color: Colors.white,
              child: Text(
                "Forgot Password?",
                style: TextStyle(
                    color: Colors.blue[400],
                    fontSize: 20,
                    fontWeight: FontWeight.bold),
              ),
            ),
            SizedBox(
              height: 20,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                RaisedButton(
                  onPressed: () {},
                  child: Text(
                    "Login",
                    style: TextStyle(
                        color: Colors.white,
                        fontSize: 20,
                        fontWeight: FontWeight.bold),
                  ),
                  color: Colors.blue,
                  padding: EdgeInsets.fromLTRB(12, 10, 12, 10),
                ),
                RaisedButton(
                  onPressed: () {
                    Navigator.pushNamed(context, "/sign");
                  },
                  child: Text(
                    "Sign Up",
                    style: TextStyle(
                        color: Colors.white,
                        fontSize: 20,
                        fontWeight: FontWeight.bold),
                  ),
                  color: Colors.blue,
                  padding: EdgeInsets.fromLTRB(12, 10, 12, 10),
                ),
              ],
            ),
            SizedBox(
              height: 10,
            ),
            Text(
              "Or",
              style: TextStyle(
                fontSize: 18,
              ),
            ),
            SizedBox(
              height: 10,
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
            ),
          ],
        ),
      ),
    );
  }
}
