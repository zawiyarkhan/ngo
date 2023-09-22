// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables

import 'package:app/Views/payment.dart';
import 'package:app/Widgets/event_card.dart';
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
        child: SingleChildScrollView(
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
                  color: Colors.amber,
                  borderRadius: BorderRadius.circular(30),
                  image: DecorationImage(
                      image: NetworkImage(
                        "https://blogger.googleusercontent.com/img/b/R29vZ2xl/AVvXsEi5OD1xp6WH0PgGMqWSAyBLVXVc59SBSYo-GKeAcZTkgRwnIE_xGhoMc9Ovx4YXcL7C3afkDOXLGdpziZApOMH1GwXvePj8VUDAQWJHvUMHSUaPIQYrm2_GnduMZhtzOl_jU1FA4D64A5yMFh6_qiTJuz3DPr7IUEvQATLl5uFDeQuntFhu47zpQhRk/s1170/Akhuwat-Foundation.jpg",
                      ),
                      fit: BoxFit.cover),
                ),
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
              Text(
                  "Akhuwat Foundation is a nonprofit organization based in the country of Pakistan that provides interest-free loans to individuals who are unable to access formal financial services.[1] It was founded in 2003 by Dr. Muhammad Amjad Saqib who is the executive director of the organization.[2] Akhuwat's head office is located in Lahore and it has over 3 branches across 1,500 cities in Pakistan."),
              SizedBox(
                height: 30,
              ),
              Text(
                "Events Organized",
                style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
              ),
              SingleChildScrollView(
                scrollDirection: Axis.horizontal,
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: [EventCard(), EventCard(), EventCard()],
                ),
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
      ),
    );
  }
}
