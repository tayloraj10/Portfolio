import 'package:flutter/material.dart';
import 'package:portfolio/components/nav_bar.dart';

class NFTS extends StatelessWidget {
  const NFTS({Key? key}) : super(key: key);

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
              nfts: true,
            ),
          )
        ],
      ),
    );
  }
}
