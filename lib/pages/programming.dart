import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:full_screen_image/full_screen_image.dart';
import 'package:portfolio/components/nav_bar.dart';
import 'package:portfolio/projects.dart';
import 'package:url_launcher/url_launcher.dart';

class Programming extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          children: [
            Padding(
              padding: const EdgeInsets.symmetric(
                vertical: 20,
                horizontal: 30,
              ),
              child: NavBar(
                programming: true,
              ),
            ),
            SizedBox(
              height: 30,
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
                child: Container(
                  constraints: BoxConstraints(maxWidth: 1200),
                  child: ListView.builder(
                      shrinkWrap: true,
                      itemCount: programmingProjects.length,
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
                                    programmingProjects[index]['name'],
                                    style: TextStyle(
                                        color: Colors.white,
                                        fontSize: 28,
                                        fontWeight: FontWeight.bold),
                                  ),
                                  if (programmingProjects[index]
                                          .containsKey("app_links") ||
                                      programmingProjects[index]
                                          .containsKey("repo"))
                                    Padding(
                                      padding: const EdgeInsets.symmetric(
                                          vertical: 10),
                                      child: Row(
                                        mainAxisAlignment:
                                            MainAxisAlignment.center,
                                        children: [
                                          if (programmingProjects[index]
                                              .containsKey("app_links"))
                                            GestureDetector(
                                              onTap: () {
                                                launch(
                                                    programmingProjects[index]
                                                        ['app_links']['ios']);
                                              },
                                              child: Icon(
                                                  FontAwesomeIcons.appStore,
                                                  color: Colors.blue,
                                                  size: 40),
                                            ),
                                          if (programmingProjects[index]
                                              .containsKey("app_links"))
                                            SizedBox(
                                              width: 20,
                                            ),
                                          if (programmingProjects[index]
                                              .containsKey("app_links"))
                                            GestureDetector(
                                              onTap: () {
                                                launch(
                                                    programmingProjects[index]
                                                            ['app_links']
                                                        ['android']);
                                              },
                                              child: Icon(
                                                  FontAwesomeIcons.googlePlay,
                                                  color: Colors.green,
                                                  size: 40),
                                            ),
                                          if (programmingProjects[index]
                                              .containsKey("app_links"))
                                            SizedBox(
                                              width: 20,
                                            ),
                                          if (programmingProjects[index]
                                                  .containsKey("repo") &&
                                              programmingProjects[index]
                                                      ['repo'] !=
                                                  '')
                                            GestureDetector(
                                              onTap: () {
                                                launch(
                                                    programmingProjects[index]
                                                        ['repo']);
                                              },
                                              child: Icon(
                                                  FontAwesomeIcons.github,
                                                  color: Colors.white,
                                                  size: 40),
                                            ),
                                        ],
                                      ),
                                    ),
                                  if (programmingProjects[index]
                                          .containsKey("link") &&
                                      programmingProjects[index]['link'] != '')
                                    Padding(
                                      padding: EdgeInsets.only(top: 6),
                                      child: GestureDetector(
                                        onTap: () {
                                          launch(programmingProjects[index]
                                              ['link']);
                                        },
                                        child: Text(
                                          programmingProjects[index]['link'],
                                          style: TextStyle(
                                              color: Colors.blue,
                                              fontSize: 18,
                                              fontWeight: FontWeight.bold),
                                        ),
                                      ),
                                    ),
                                  SizedBox(
                                    height: 10,
                                  ),
                                  SelectableText(
                                    programmingProjects[index]['description'],
                                    style: TextStyle(
                                        color: Colors.white,
                                        fontSize: 18,
                                        fontWeight: FontWeight.bold),
                                  ),
                                  SizedBox(
                                    height: 30,
                                  ),
                                  if (programmingProjects[index]['image'] != '')
                                    FullScreenWidget(
                                      child: Center(
                                        child: ClipRRect(
                                          borderRadius: BorderRadius.circular(
                                              10), // Image border
                                          child: Image.asset(
                                              programmingProjects[index]
                                                  ['image'],
                                              fit: BoxFit.cover),
                                        ),
                                      ),
                                    ),
                                  SizedBox(
                                    height: 30,
                                  ),
                                  Divider(
                                    color: Colors.white,
                                    thickness: 3,
                                  )
                                ],
                              ),
                            ),
                          ),
                        );
                      }),
                ),
              ),
            ))
          ],
        ),
      ),
    );
  }
}
