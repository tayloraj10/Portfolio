// ignore_for_file: use_key_in_widget_constructors

import 'package:flutter/material.dart';
import 'package:portfolio/pages/gis.dart';
import 'package:portfolio/pages/home.dart';
import 'package:portfolio/pages/nfts.dart';
import 'package:portfolio/pages/programming.dart';
import 'package:portfolio/pages/resume.dart';

class NavBar extends StatefulWidget {
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
  State<NavBar> createState() => _NavBarState();
}

class _NavBarState extends State<NavBar> {
  String dropdownValue = '';
  List<String> pages = ['', 'Programming', 'GIS', 'NFTs', 'Resume'];

  void setDropdownValue() {
    if (widget.home) setState(() => dropdownValue = '');
    if (widget.programming) setState(() => dropdownValue = 'Programming');
    if (widget.gis) setState(() => dropdownValue = 'GIS');
    if (widget.nfts) setState(() => dropdownValue = 'NFTs');
    if (widget.resume) setState(() => dropdownValue = 'Resume');
  }

  @override
  Widget build(BuildContext context) {
    setDropdownValue();
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        MouseRegion(
          cursor: SystemMouseCursors.click,
          child: GestureDetector(
            onTap: () {
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => Home()),
              );
            },
            child: Text('Home',
                style: TextStyle(
                    color: Colors.white,
                    fontSize: widget.home ? 20 : 16,
                    fontWeight: widget.home ? FontWeight.bold : null)),
          ),
        ),
        MediaQuery.of(context).size.width > 500
            ? Row(
                mainAxisAlignment: MainAxisAlignment.end,
                children: [
                  MouseRegion(
                    cursor: SystemMouseCursors.click,
                    child: GestureDetector(
                      onTap: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => Programming()),
                        );
                      },
                      child: Text(
                        'Programming',
                        style: TextStyle(
                            color: Colors.white,
                            fontSize: widget.programming ? 20 : 16,
                            fontWeight:
                                widget.programming ? FontWeight.bold : null),
                      ),
                    ),
                  ),
                  SizedBox(
                    width: 30,
                  ),
                  MouseRegion(
                    cursor: SystemMouseCursors.click,
                    child: GestureDetector(
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
                            fontSize: widget.gis ? 20 : 16,
                            fontWeight: widget.gis ? FontWeight.bold : null),
                      ),
                    ),
                  ),
                  SizedBox(
                    width: 30,
                  ),
                  MouseRegion(
                    cursor: SystemMouseCursors.click,
                    child: GestureDetector(
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
                            fontSize: widget.nfts ? 20 : 16,
                            fontWeight: widget.nfts ? FontWeight.bold : null),
                      ),
                    ),
                  ),
                  SizedBox(
                    width: 30,
                  ),
                  MouseRegion(
                    cursor: SystemMouseCursors.click,
                    child: GestureDetector(
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
                            fontSize: widget.resume ? 20 : 16,
                            fontWeight: widget.resume ? FontWeight.bold : null),
                      ),
                    ),
                  )
                ],
              )
            : DropdownButton<String>(
                value: dropdownValue,
                elevation: 16,
                style: const TextStyle(color: Colors.white),
                underline: Container(
                  height: 2,
                  color: Colors.white,
                ),
                onChanged: (String? newValue) {
                  setState(() {
                    dropdownValue = newValue!;
                  });
                  if (newValue == 'Programming') {
                    Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context) => Programming()),
                    );
                  }
                  if (newValue == 'GIS') {
                    Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context) => GIS()),
                    );
                  }
                  if (newValue == 'NFTs') {
                    Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context) => NFTS()),
                    );
                  }
                  if (newValue == 'Resume') {
                    Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context) => Resume()),
                    );
                  }
                },
                items: pages.map<DropdownMenuItem<String>>((String value) {
                  return DropdownMenuItem<String>(
                    value: value,
                    child: Text(value),
                  );
                }).toList(),
              ),
      ],
    );
  }
}
