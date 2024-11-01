import 'package:firebase_auth/firebase_auth.dart';
import 'package:get/get.dart';
import 'package:flutter/material.dart';
import 'package:syncfusion_flutter_pdfviewer/pdfviewer.dart';

class PdfController extends GetxController {
  // Khởi tạo GlobalKey cho việc điều khiển SfPdfViewer
  final GlobalKey<SfPdfViewerState> pdfViewerKey = GlobalKey();
  // Khởi tạo đối tượng Firebase Authentication
  final auth = FirebaseAuth.instance;
}
