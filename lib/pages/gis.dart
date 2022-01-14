import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:full_screen_image/full_screen_image.dart';
import 'package:portfolio/components/nav_bar.dart';
import 'package:portfolio/projects.dart';

class GIS extends StatelessWidget {
  const GIS({Key? key}) : super(key: key);

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
                gis: true,
              )),
          SizedBox(
            height: 40,
          ),
          Text('Projects',
              style: TextStyle(
                  color: Colors.white,
                  fontSize: 28,
                  fontWeight: FontWeight.bold)),
          SizedBox(
            height: 20,
          ),
          Expanded(
              child: ScrollConfiguration(
            behavior: ScrollConfiguration.of(context).copyWith(dragDevices: {
              PointerDeviceKind.mouse,
              PointerDeviceKind.touch
            }),
            child: Scrollbar(
              showTrackOnHover: true,
              isAlwaysShown: true,
              child: ListView.builder(
                  shrinkWrap: true,
                  itemCount: gisProjects.length,
                  itemBuilder: (context, index) {
                    return Padding(
                      padding: const EdgeInsets.symmetric(
                        horizontal: 40,
                      ),
                      child: Card(
                        color: Colors.black,
                        child: Padding(
                          padding: const EdgeInsets.all(20),
                          child: Column(
                            children: [
                              Text(
                                gisProjects[index]['name'],
                                textAlign: TextAlign.center,
                                style: TextStyle(
                                    color: Colors.white,
                                    fontSize: 28,
                                    fontWeight: FontWeight.bold),
                              ),
                              if (gisProjects[index]['link'] != '')
                                SizedBox(
                                  height: 10,
                                ),
                              SizedBox(
                                height: 10,
                              ),
                              SizedBox(
                                height: 10,
                              ),
                              if (gisProjects[index]['image'] != '')
                                FullScreenWidget(
                                  child: Center(
                                    child: ClipRRect(
                                      borderRadius: BorderRadius.circular(
                                          10), // Image border
                                      child: Image.asset(
                                          gisProjects[index]['image'],
                                          fit: BoxFit.cover),
                                    ),
                                  ),
                                ),
                            ],
                          ),
                        ),
                      ),
                    );
                  }),
            ),
          ))
        ],
      ),
    );
  }
}
