import 'package:animated_text_kit/animated_text_kit.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:portfolio/components/nav_bar.dart';
import 'package:url_launcher/url_launcher.dart';
import 'package:portfolio/constants.dart';

class Home extends StatelessWidget {
  List<Color> colorizeColors = [
    Colors.blue,
    Colors.purple,
    Colors.yellow,
    Colors.red,
  ];

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
                      AnimatedTextKit(
                        animatedTexts: [
                          ColorizeAnimatedText(
                            "Taylor Johnson's Portfolio Website",
                            textStyle: TextStyle(fontSize: 32),
                            colors: colorizeColors,
                            speed: Duration(milliseconds: 300),
                          ),
                        ],
                        repeatForever: true,
                      ),
                      // Text(
                      //   "Taylor Johnson's Portfolio Website",
                      //   style: TextStyle(fontSize: 32, color: Colors.white),
                      //   textAlign: MediaQuery.of(context).size.width <= 500
                      //       ? TextAlign.center
                      //       : null,
                      // ),
                      SizedBox(
                        height: 8,
                      ),
                      DefaultTextStyle(
                        style: TextStyle(fontSize: 18, color: Colors.white),
                        child: AnimatedTextKit(
                          animatedTexts: [
                            TypewriterAnimatedText(
                                "Please enjoy a selection of projects I've worked on",
                                speed: Duration(milliseconds: 75)),
                          ],
                          repeatForever: true,
                        ),
                      ),
                      // Text(
                      //   "Please enjoy a selection of projects I've worked on",
                      //   style: TextStyle(fontSize: 18, color: Colors.white),
                      //   textAlign: MediaQuery.of(context).size.width <= 500
                      //       ? TextAlign.center
                      //       : null,
                      // ),
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
          Padding(
            padding: const EdgeInsets.only(bottom: 40),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(
                  'This website was built using Flutter',
                  style: TextStyle(color: Colors.white),
                ),
                SizedBox(
                  width: 8,
                ),
                SvgPicture.asset(
                  'assets/flutter-logo.svg',
                  height: 20,
                )
              ],
            ),
          )
        ],
      ),
    );
  }
}
