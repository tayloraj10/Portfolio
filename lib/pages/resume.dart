import 'package:flutter/material.dart';
import 'package:portfolio/components/nav_bar.dart';

class Resume extends StatelessWidget {
  const Resume({Key? key}) : super(key: key);

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
              resume: true,
            ),
          )
        ],
      ),
    );
  }
}
