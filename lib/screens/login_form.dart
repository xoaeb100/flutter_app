import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';
import 'package:the_basics/utils/routes.dart';

class LoginScreen extends StatefulWidget {
  const LoginScreen({super.key});

  @override
  State<LoginScreen> createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  String name = '';
  bool usernameEntered = false;
  bool passwordEntered = false;

  final _formKey = GlobalKey<FormState>();
  @override
  Widget build(BuildContext context) {
    return Material(
        color: Colors.white,
        child: Column(children: [
          Image.asset(
            'assets/images/login.png',
            // fit: BoxFit.none
            height: 200,
          ),
          SizedBox(
            height: 20,
          ),
          Text(
            'Hi $name, Welcome to Flopkart! ',
            style: TextStyle(fontSize: 22, fontWeight: FontWeight.bold),
          ),
          Padding(
            padding:
                const EdgeInsets.symmetric(vertical: 16.0, horizontal: 32.0),
            child: SingleChildScrollView(
              child: Form(
                key: _formKey,
                child: Column(
                  children: [
                    TextFormField(
                      decoration: InputDecoration(
                          hintText: "Enter username", labelText: "Username"),
                      validator: (value) {
                        print(value);
                        if (value!.isEmpty) {
                          return "username cannot be empty";
                        } else {
                          return null;
                        }
                      },
                      onChanged: (value) {
                        usernameEntered = true;
                        name = value;
                        setState(() {});
                      },
                    ),
                    TextFormField(
                      obscureText: true,
                      decoration: InputDecoration(
                          hintText: "Enter password", labelText: "Password"),
                      validator: (value) {
                        print(value);
                        if (value!.isEmpty) {
                          return "password cannot be empty";
                        } else if (value.length < 7) {
                          return "password cannot be less than 8 char";
                        } else {
                          return null;
                        }
                      },
                      onChanged: (value) {
                        passwordEntered = true;

                        setState(() {});
                      },
                    ),
                    SizedBox(
                      height: 20,
                    ),
                    ElevatedButton(
                      child: Text('Login'),
                      style: TextButton.styleFrom(),
                      onPressed: () {
                        if (passwordEntered && usernameEntered) {
                          Navigator.pushNamed(context, MyRoutes.homeRoute);
                        }
                      },
                    )
                  ],
                ),
              ),
            ),
          )
        ]));
  }
}
