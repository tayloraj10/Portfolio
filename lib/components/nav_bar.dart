import 'package:flutter/material.dart';

class NavBar extends StatelessWidget {
  const NavBar({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Text('Home',
            style: TextStyle(
              color: Colors.white,
              fontSize: 18,
            )),
        Row(
          mainAxisAlignment: MainAxisAlignment.end,
          children: [
            Text('Programming',
                style: TextStyle(
                  color: Colors.white,
                )),
            SizedBox(
              width: 30,
            ),
            Text(
              'GIS',
              style: TextStyle(
                color: Colors.white,
              ),
            ),
            SizedBox(
              width: 30,
            ),
            Text(
              'NFTs',
              style: TextStyle(
                color: Colors.white,
              ),
            ),
            SizedBox(
              width: 30,
            ),
            Text(
              'Resume',
              style: TextStyle(
                color: Colors.white,
              ),
            )
          ],
        ),
      ],
    );
  }
}
