// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables

import 'package:app/Views/payment.dart';
import 'package:flutter/material.dart';

class NgoDescriptionPage extends StatefulWidget {
  const NgoDescriptionPage({super.key});

  @override
  State<NgoDescriptionPage> createState() => _NgoDescriptionPageState();
}

class _NgoDescriptionPageState extends State<NgoDescriptionPage> {
  @override
  Widget build(BuildContext context) {
    var height = MediaQuery.of(context).size.height;
    var width = MediaQuery.of(context).size.width;
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 15.0, vertical: 60),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              "Akhuwat Foundation",
              style: TextStyle(
                fontWeight: FontWeight.bold,
                fontSize: 28,
              ),
            ),
            SizedBox(
              height: 30,
            ),
            Container(
              height: height / 3,
              width: width,
              decoration: BoxDecoration(
                  color: Colors.amber, borderRadius: BorderRadius.circular(30)),
            ),
            SizedBox(
              height: 40,
            ),
            Text(
              "Description",
              style: TextStyle(fontSize: 22, fontWeight: FontWeight.w700),
            ),
            SizedBox(
              height: 5,
            ),
            Text("This is the description of the NGO "),
            SizedBox(
              height: 50,
            ),
            ElevatedButton(
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => PaymentGateway()),
                  );
                },
                child: Text("Donate"))
          ],
        ),
      ),
    );
  }
}
