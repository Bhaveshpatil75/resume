import 'dart:developer';
import 'dart:io';
import 'package:flutter/material.dart';
import 'package:flutter_pdfview/flutter_pdfview.dart';
import 'package:resume_builder/functions.dart';

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key});

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  File? _file;
  @override
  void initState() {
    initData();
    super.initState();
  }
  Future<void> initData()async{
    _file=await handlePDF().generate();
    setState(() {

    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Center(child: Text("MY RESUME")),
        ),
        body:_file==null?Center(child: CircularProgressIndicator()):PDFView(
          filePath: _file?.path,backgroundColor: Colors.grey,
        )
    );
  }
}