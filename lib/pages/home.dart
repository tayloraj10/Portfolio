import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:portfolio/components/nav_bar.dart';
import 'package:url_launcher/url_launcher.dart';
import 'package:portfolio/constants.dart';

class Home extends StatelessWidget {
  const Home({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          Padding(
            padding: const EdgeInsets.symmetric(
              vertical: 20,
              horizontal: 40,
            ),
            child: NavBar(
              home: true,
            ),
          ),
          Expanded(
            child: Padding(
              padding: const EdgeInsets.symmetric(horizontal: 40),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        "Taylor Johnson's Portfolio Website",
                        style: TextStyle(fontSize: 32, color: Colors.white),
                        textAlign: MediaQuery.of(context).size.width <= 500
                            ? TextAlign.center
                            : null,
                      ),
                      SizedBox(
                        height: 8,
                      ),
                      Text(
                        "Please enjoy a selection of projects I've worked on",
                        style: TextStyle(fontSize: 18, color: Colors.white),
                        textAlign: MediaQuery.of(context).size.width <= 500
                            ? TextAlign.center
                            : null,
                      ),
                    ],
                  ),
                  SizedBox(
                    height: 30,
                  ),
                  Text(
                    "Contact Me",
                    style: TextStyle(fontSize: 14, color: Colors.white),
                  ),
                  SizedBox(
                    height: 8,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      GestureDetector(
                        onTap: () {
                          launch('mailto:$email');
                        },
                        child: Icon(FontAwesomeIcons.solidEnvelope,
                            color: Colors.red, size: 40),
                      ),
                      Padding(
                        padding: const EdgeInsets.symmetric(horizontal: 14),
                        child: GestureDetector(
                          onTap: () {
                            launch(githubUrl);
                          },
                          child: Icon(FontAwesomeIcons.github,
                              color: Colors.white, size: 40),
                        ),
                      ),
                      GestureDetector(
                        onTap: () {
                          launch(linkedInUrl);
                        },
                        child: Icon(FontAwesomeIcons.linkedin,
                            color: Colors.blue, size: 40),
                      )
                    ],
                  )
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
