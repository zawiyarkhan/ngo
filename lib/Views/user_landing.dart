// ignore_for_file: prefer_const_literals_to_create_immutables, prefer_const_constructors

import 'package:flutter/material.dart';
import '../Widgets/ngo_card.dart';
// import '../Views/Widgets/ngo_card.dart';

import '../Models/ngo_model.dart';

class UserLandingPage extends StatefulWidget {
  const UserLandingPage({super.key});

  @override
  State<UserLandingPage> createState() => _UserLandingPageState();
}

class _UserLandingPageState extends State<UserLandingPage> {
  List<Map> ngoList = [{}, {}, {}, {}, {}, {}];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 15.0, vertical: 70),
        child: SingleChildScrollView(
          child: Column(
            children: [
              Padding(
                padding: const EdgeInsets.all(10.0),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      "Hello User",
                      style:
                          TextStyle(fontSize: 25, fontWeight: FontWeight.w700),
                    ),
                    CircleAvatar(
                      backgroundColor: Colors.grey,
                      radius: 22,
                    )
                  ],
                ),
              ),
              SizedBox(
                height: 20,
              ),
              NGOCard(),
              NGOCard(),
              NGOCard(),
              NGOCard(),
              NGOCard(),
              NGOCard(),
            ],
          ),
        ),
      ),
    );
  }
}
