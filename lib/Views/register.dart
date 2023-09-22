// ignore_for_file: prefer_const_constructors, use_build_context_synchronously

import 'package:app/Views/mainNavigation.dart';
import 'package:flutter/material.dart';

import './user_landing.dart';
import '../Controllers/auth.dart';

class RegisterPage extends StatefulWidget {
  const RegisterPage({super.key});

  @override
  State<RegisterPage> createState() => _RegisterPageState();
}

class _RegisterPageState extends State<RegisterPage> {
  TextEditingController emailController = TextEditingController();
  TextEditingController passwordController = TextEditingController();
  TextEditingController contactController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Padding(
          padding: const EdgeInsets.all(16.0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              Spacer(
                flex: 1,
              ),
              Image.asset("assets/ngo_logo.jpeg"),
              // Email field
              TextFormField(
                controller: emailController,
                decoration: InputDecoration(
                  icon: Icon(Icons.email_outlined),
                  labelText: 'Email',
                  border: OutlineInputBorder(),
                ),
              ),
              SizedBox(height: 16.0), // Add spacing between fields
              // Password field
              TextFormField(
                controller: passwordController,
                decoration: InputDecoration(
                  icon: Icon(Icons.password),
                  labelText: 'Password',
                  border: OutlineInputBorder(),
                ),
                obscureText: true, // Hide password text
              ),
              SizedBox(height: 16.0), // Add spacing between fields
              // Password field
              TextFormField(
                controller: passwordController,
                decoration: InputDecoration(
                  prefixIcon: Icon(Icons.contact_phone_outlined),
                  labelText: 'Contact Number',
                  border: OutlineInputBorder(),
                ),
                obscureText: false, // Hide password text
              ),
              SizedBox(height: 24.0), // Add more spacing below fields
              // Login button
              ElevatedButton(
                onPressed: () {
                  // Perform login action using emailController.text and passwordController.text
                },
                child: Text('Login'),
              ),
              SizedBox(height: 20.0), // Add spacing between buttons
              // Sign up button

              Spacer(
                flex: 1,
              ),
              TextButton(
                onPressed: () async {
                  print("redirected to NGO signup");

                  bool create = await register(
                      emailController.text, passwordController.text);

                  if (create) {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => MainNavigation(),
                      ),
                    );
                  }
                },
                child: Text(
                  "Are you an Organization",
                  style: TextStyle(
                    fontSize: 20,
                    color: Colors.blueAccent,
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
