// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables, use_build_context_synchronously

import 'package:app/Views/mainNavigation.dart';
import 'package:flutter/material.dart';
import '../Controllers/auth.dart';
import "./register.dart";
// import '../Models/user_model.dart';
// import '../Controllers/auth.dart';
import './user_landing.dart';

class LoginPage extends StatefulWidget {
  const LoginPage({super.key});

  @override
  State<LoginPage> createState() => LoginPageState();
}

class LoginPageState extends State<LoginPage> {
  TextEditingController emailController = TextEditingController();
  TextEditingController passwordController = TextEditingController();
  @override
  Widget build(BuildContext context) {
    var height = MediaQuery.of(context).size.height;
    var width = MediaQuery.of(context).size.width;
    return Scaffold(
      body: Center(
        child: Padding(
          padding: const EdgeInsets.symmetric(vertical: 50.0, horizontal: 16),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              Image.asset(
                "assets/ngo_logo.jpeg",
                height: height / 4,
                // scale: height / 0.5,
              ),

              SizedBox(
                height: 20,
              ),

              Text(
                "login with",
                style: TextStyle(fontSize: 19),
              ),
              SizedBox(
                height: 10,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  GestureDetector(
                    child: CircleAvatar(
                      radius: 25,
                      child: Image.asset("assets/google.png"),
                      backgroundColor: Colors.white,
                    ),
                  ),
                  SizedBox(
                    width: 15,
                  ),
                  GestureDetector(
                    child: CircleAvatar(
                      radius: 25,
                      child: Image.asset("assets/facebook.png"),
                    ),
                  )
                ],
              ),

              SizedBox(
                height: 30,
              ),
              // Email field
              TextFormField(
                controller: emailController,
                decoration: InputDecoration(
                  prefixIcon: Icon(Icons.email_outlined),
                  labelText: 'Email',
                  border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(20)),
                ),
              ),
              SizedBox(height: 16.0), // Add spacing between fields
              // Password field
              TextFormField(
                controller: passwordController,
                decoration: InputDecoration(
                  prefixIcon: Icon(Icons.password_outlined),
                  labelText: 'Password',
                  border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(20)),
                ),
                obscureText: true, // Hide password text
              ),
              SizedBox(height: 24.0), // Add more spacing below fields
              // Login button
              ElevatedButton(
                onPressed: () async {
                  // bool login = await signIn(
                  //     emailController.text, passwordController.text);

                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => MainNavigation()),
                  );

                  // Perform login action using emailController.text and passwordController.text
                },
                child: Text('Login'),
              ),
              SizedBox(height: 12.0), // Add spacing between buttons
              // Sign up button
              OutlinedButton(
                onPressed: () {
                  // Navigate to the sign-up page or perform sign-up action here
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => RegisterPage()),
                  );
                },
                child: Text('Sign Up'),
              ),
              Spacer(
                flex: 1,
              ),

              TextButton(
                onPressed: () {},
                child: Text(
                  "Login for Organization",
                  style: TextStyle(
                    fontSize: 16,
                  ),
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
// 