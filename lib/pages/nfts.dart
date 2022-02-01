import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:full_screen_image/full_screen_image.dart';
import 'package:portfolio/components/nav_bar.dart';
import 'package:portfolio/projects.dart';
import 'package:url_launcher/url_launcher.dart';

class NFTS extends StatelessWidget {
  const NFTS({Key? key}) : super(key: key);

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
                nfts: true,
              ),
            ),
            SizedBox(
              height: 30,
            ),
            Text('Collections',
                style: TextStyle(
                    color: Colors.white,
                    fontSize: 24,
                    fontWeight: FontWeight.bold)),
            SizedBox(
              height: 40,
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
                  child: ListView(
                    children: [
                      for (Map collection in nftCollections)
                        Padding(
                          padding: const EdgeInsets.only(bottom: 60),
                          child: Column(
                            children: [
                              GestureDetector(
                                onTap: () {
                                  launch(collection['link']);
                                },
                                child: Text(
                                  collection['name'],
                                  style: TextStyle(
                                    color: Colors.blue,
                                    fontSize: 28,
                                    fontWeight: FontWeight.bold,
                                  ),
                                ),
                              ),
                              ListView.builder(
                                  shrinkWrap: true,
                                  itemCount: nfts
                                      .where((map) =>
                                          collection['name'] ==
                                          map['collection'])
                                      .length,
                                  itemBuilder: (context, index) {
                                    List nftsToShow = nfts
                                        .where((map) =>
                                            collection['name'] ==
                                            map['collection'])
                                        .toList();
                                    return GestureDetector(
                                      onTap: () {
                                        launch(nftsToShow[index]['link']);
                                      },
                                      child: Padding(
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
                                                  nftsToShow[index]['name'],
                                                  textAlign: TextAlign.center,
                                                  style: TextStyle(
                                                    color: Colors.white,
                                                    fontSize: 24,
                                                    fontWeight: FontWeight.bold,
                                                    decoration: TextDecoration
                                                        .underline,
                                                  ),
                                                ),
                                                if (nftsToShow[index]['link'] !=
                                                    '')
                                                  SizedBox(
                                                    height: 10,
                                                  ),
                                                SizedBox(
                                                  height: 10,
                                                ),
                                                SizedBox(
                                                  height: 10,
                                                ),
                                                if (nftsToShow[index]
                                                        ['image'] !=
                                                    '')
                                                  FullScreenWidget(
                                                    child: Center(
                                                      child: ClipRRect(
                                                        borderRadius:
                                                            BorderRadius.circular(
                                                                10), // Image border
                                                        child: Image.network(
                                                            nftsToShow[index]
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
                                      ),
                                    );
                                  }),
                            ],
                          ),
                        ),
                    ],
                  ),
                ),
              ),
            ))
          ],
        ),
      ),
    );
  }
}
