// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables

import 'package:app/Widgets/ngo_card.dart';
import 'package:flutter/material.dart';

class LikedNgo extends StatefulWidget {
  const LikedNgo({super.key});

  @override
  State<LikedNgo> createState() => _LikedNgoState();
}

class _LikedNgoState extends State<LikedNgo> {
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
            ],
          ),
        ),
      ),
    );
  }
}
