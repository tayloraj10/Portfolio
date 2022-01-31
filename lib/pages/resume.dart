import 'package:flutter/material.dart';
import 'package:portfolio/components/nav_bar.dart';
import 'package:syncfusion_flutter_pdfviewer/pdfviewer.dart';

class Resume extends StatefulWidget {
  @override
  State<Resume> createState() => _ResumeState();
}

class _ResumeState extends State<Resume> {
  PdfViewerController pdfViewerController = PdfViewerController();

  bool zoomed = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Column(children: [
      Padding(
        padding: const EdgeInsets.symmetric(
          vertical: 20,
          horizontal: 30,
        ),
        child: NavBar(
          resume: true,
        ),
      ),
      Expanded(
        child: Stack(
          children: [
            SfPdfViewer.asset(
              "assets/resume/Taylor Johnson's Resume.pdf",
              controller: pdfViewerController,
              enableDoubleTapZooming: true,
              enableTextSelection: true,
              interactionMode: PdfInteractionMode.pan,
              onZoomLevelChanged: (pdfZoomDetails) {
                setState(() {
                  zoomed = pdfZoomDetails.newZoomLevel == 2 ? true : false;
                });
              },
            ),
            GestureDetector(
              onTap: () {
                zoomed
                    ? pdfViewerController.zoomLevel = 1
                    : pdfViewerController.zoomLevel = 2;
              },
              child: Align(
                child: Icon(zoomed ? Icons.zoom_out : Icons.zoom_in,
                    color: Colors.black, size: 50),
                alignment: Alignment.topCenter,
              ),
            ),
          ],
        ),
      ),
    ]));
  }
}
