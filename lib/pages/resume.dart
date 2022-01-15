import 'package:flutter/material.dart';
import 'package:portfolio/components/nav_bar.dart';
import 'package:syncfusion_flutter_pdfviewer/pdfviewer.dart';

class Resume extends StatelessWidget {
  PdfViewerController pdfViewerController = PdfViewerController();
  bool zoomed = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Column(children: [
      Padding(
        padding: const EdgeInsets.symmetric(
          vertical: 20,
          horizontal: 40,
        ),
        child: NavBar(
          resume: true,
        ),
      ),
      Expanded(
        child: SfPdfViewer.asset(
          "assets/resume/Taylor Johnson's Resume.pdf",
          controller: pdfViewerController,
          enableDoubleTapZooming: true,
          enableTextSelection: true,
          interactionMode: PdfInteractionMode.pan,
        ),
      ),
    ]));
  }
}
