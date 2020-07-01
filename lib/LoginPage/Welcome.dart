import 'package:flutter/material.dart';

class Login extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return AlertDialog(
      title: Text("Login Page"),
      //insert login system here
      //content: googloe thing
      actions: <Widget>[
        FlatButton(
          onPressed: () {
            //input some command
            Navigator.pop(context);
          },
          child: Text("Log In"),
        ),
      ],
    );
  }
}

class LoginTitle extends StatelessWidget{

  String title;

  LoginTitle(this.title);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.all(16.0),
      child: Container(
        child: Text(title)
      ),
    );
  }
}