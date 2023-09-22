// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables

import 'package:app/Views/NGOdescription.dart';
import 'package:flutter/material.dart';

class NGOCard extends StatefulWidget {
  const NGOCard({super.key});

  @override
  State<NGOCard> createState() => _NGOCardState();
}

class _NGOCardState extends State<NGOCard> {
  bool fav = false;
  @override
  Widget build(BuildContext context) {
    var height = MediaQuery.of(context).size.height;
    var width = MediaQuery.of(context).size.width;
    return GestureDetector(
      onTap: () {
        print("tapped");
        Navigator.push(
          context,
          MaterialPageRoute(builder: (context) => NgoDescriptionPage()),
        );
      },
      child: Padding(
        padding: const EdgeInsets.all(5.0),
        child: Container(
          height: height / 5.4,
          width: width,
          decoration: BoxDecoration(
            border: Border.all(width: 2, color: Colors.black),
            borderRadius: BorderRadius.circular(20),
          ),
          child: Row(
            children: [
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Container(
                  height: height / 6.2,
                  width: width / 3.3,
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(15),
                      color: Colors.amber),
                  // color: Colors.amber,
                ),
              ),
              // Padding(padding: EdgeInsets.all(10)),
              Padding(
                padding: const EdgeInsets.symmetric(vertical: 10.0),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.start,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    SizedBox(
                      width: width / 2,
                      child: Text(
                        "Akhuwat Foundation",
                        style: TextStyle(
                          color: Colors.black,
                          fontWeight: FontWeight.bold,
                          fontSize: 16,
                        ),
                      ),
                    ),
                    SizedBox(
                      height: 5,
                    ),
                    SizedBox(
                      width: width / 2,
                      child: Text(
                        "This is the description of the page that we need that is the best thing aoubt this and this",
                        style: TextStyle(fontSize: 13),
                      ),
                    ),
                    Spacer(
                      flex: 1,
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.end,
                      children: [
                        GestureDetector(
                          onTap: () {
                            setState(() {
                              fav = true;
                            });
                          },
                          onDoubleTap: () {
                            setState(() {
                              fav = false;
                            });
                          },
                          child: fav
                              ? Icon(
                                  Icons.favorite,
                                  color: Colors.red,
                                )
                              : Icon(Icons.favorite_outline_outlined),
                        ),
                      ],
                    )
                  ],
                ),
              ),
              // Icon(Icons.favorite_outline)
            ],
          ),
        ),
      ),
    );
  }
}
