// ignore_for_file: use_key_in_widget_constructors

import 'package:flutter/material.dart';
import 'package:portfolio/pages/gis.dart';
import 'package:portfolio/pages/home.dart';
import 'package:portfolio/pages/nfts.dart';
import 'package:portfolio/pages/programming.dart';
import 'package:portfolio/pages/resume.dart';

class NavBar extends StatelessWidget {
  bool home;
  bool programming;
  bool gis;
  bool nfts;
  bool resume;

  NavBar(
      {this.home = false,
      this.programming = false,
      this.gis = false,
      this.nfts = false,
      this.resume = false});

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        GestureDetector(
          onTap: () {
            Navigator.push(
              context,
              MaterialPageRoute(builder: (context) => Home()),
            );
          },
          child: Text('Home',
              style: TextStyle(
                  color: Colors.white,
                  fontSize: home ? 20 : 16,
                  fontWeight: home ? FontWeight.bold : null)),
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.end,
          children: [
            GestureDetector(
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => Programming()),
                );
              },
              child: Text(
                'Programming',
                style: TextStyle(
                    color: Colors.white,
                    fontSize: programming ? 20 : 16,
                    fontWeight: programming ? FontWeight.bold : null),
              ),
            ),
            SizedBox(
              width: 30,
            ),
            GestureDetector(
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => GIS()),
                );
              },
              child: Text(
                'GIS',
                style: TextStyle(
                    color: Colors.white,
                    fontSize: gis ? 20 : 16,
                    fontWeight: gis ? FontWeight.bold : null),
              ),
            ),
            SizedBox(
              width: 30,
            ),
            GestureDetector(
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => NFTS()),
                );
              },
              child: Text(
                'NFTs',
                style: TextStyle(
                    color: Colors.white,
                    fontSize: nfts ? 20 : 16,
                    fontWeight: nfts ? FontWeight.bold : null),
              ),
            ),
            SizedBox(
              width: 30,
            ),
            GestureDetector(
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => Resume()),
                );
              },
              child: Text(
                'Resume',
                style: TextStyle(
                    color: Colors.white,
                    fontSize: resume ? 20 : 16,
                    fontWeight: resume ? FontWeight.bold : null),
              ),
            )
          ],
        ),
      ],
    );
  }
}
