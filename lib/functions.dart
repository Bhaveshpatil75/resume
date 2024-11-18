
import 'dart:io';
import 'package:flutter/services.dart';
import 'package:path_provider/path_provider.dart';
import 'package:pdf/pdf.dart';
import 'package:pdf/widgets.dart' as pw;
import 'package:resume_builder/widgets/progress_bar.dart';

class handlePDF{
  Future<File> generate()async{
    final pdf=pw.Document();
    final image=await rootBundle.load("assets/myPhoto.jpg");
    final imageBytes=image.buffer.asUint8List();
    final materialIconsFont = pw.Font.ttf(await rootBundle.load('assets/MaterialIcons-Regular.ttf'));
    pdf.addPage(
      pw.Page(
          build: (pw.Context context){
            return pw.Column(
                children: [
                  pw.Row(
              mainAxisAlignment: pw.MainAxisAlignment.start,
              crossAxisAlignment: pw.CrossAxisAlignment.start,
              children: [
                pw.ClipRRect(
                  verticalRadius: 10,
                  horizontalRadius: 10,
                  child:  pw.Image(pw.MemoryImage(imageBytes),height: 50,width: 50,fit: pw.BoxFit.fill),
                ),
                pw.Padding(padding: pw.EdgeInsets.only(left: 8.0),child:
                pw.Column(
                  crossAxisAlignment: pw.CrossAxisAlignment.start,
                mainAxisAlignment: pw.MainAxisAlignment.center,
                children:[pw.Text("Bhavesh Patil",style: pw.TextStyle(fontWeight: pw.FontWeight.bold,fontSize: 25)),
                  pw.Text("Computer Engineering student"),
            ]
                ))]
            ),
                  pw.Padding(padding: pw.EdgeInsets.only(right: 16.0,top: 16.0,bottom: 16.0),child:
                  pw.Row(
                    mainAxisAlignment: pw.MainAxisAlignment.start,
                    crossAxisAlignment: pw.CrossAxisAlignment.start,
                    children: [
                      pw.Expanded(
                          child: pw.Column(
                        crossAxisAlignment: pw.CrossAxisAlignment.start,
                        children: [
                          pw.Row(
                            children: [
                              pw.Icon(pw.IconData(0xe7fd),font: materialIconsFont,size: 15),
                              pw.SizedBox(width: 5),
                              pw.Text("Profile",style: pw.TextStyle(fontWeight: pw.FontWeight.bold,fontSize: 15)),
                            ]
                          ),
                          pw.Padding(padding: pw.EdgeInsets.only(left: 21.0,top: 5.0),
                          child:pw.Text("Dedicated computer science student with hands-on experience in programming languages"
                              " such as Python, C++, Java, and Dart. Passionate about mobile and web development, particularly with technologies"
                              " like Flutter, Firebase, and Django.")
                          ),
                          pw.SizedBox(height: 10),
                          pw.Row(
                            children: [
                              pw.Icon(pw.IconData(0xe8f9),font: materialIconsFont,size: 15),
                              pw.SizedBox(width: 5),
                              pw.Text("Work Experience",style: pw.TextStyle(fontWeight: pw.FontWeight.bold,fontSize: 15)),
                            ]
                          ),
                          pw.Padding(padding: pw.EdgeInsets.only(left: 21.0,top: 5.0,bottom: 5.0),
                              child:pw.Column(
                                  crossAxisAlignment: pw.CrossAxisAlignment.start,
                                  children: [
                                pw.Text("Python Virtual Internship at Tech_Octanet private services limited",style: pw.TextStyle(fontWeight: pw.FontWeight.bold)),
                                    pw.SizedBox(height: 5),
                                    pw.Text("01/02/2024 - 01/03/2024",style: pw.TextStyle(color:PdfColor.fromHex("#808080")))
                              ])),
                          pw.Bullet(text: "built a terminal based ATM using MySQL and python.",bulletSize: 3.0,bulletColor: PdfColors.black,padding: pw.EdgeInsets.only(left: 20.0),style: pw.TextStyle(lineSpacing: 1.2)),
                          pw.Padding(padding: pw.EdgeInsets.only(left: 21.0,top: 5.0,bottom: 5.0),
                              child:pw.Column(
                                  crossAxisAlignment: pw.CrossAxisAlignment.start,
                                  children: [
                                    pw.Text("Developer Job Simulation at Accenture Nordics",style: pw.TextStyle(fontWeight: pw.FontWeight.bold)),
                                    pw.SizedBox(height: 5),
                                    pw.Text("03/06/2024",style: pw.TextStyle(color:PdfColor.fromHex("#808080")))
                                  ])),
                          pw.Bullet(text: "learnt about real life software development process at Accenture Nordics.",bulletSize: 3.0,bulletColor: PdfColors.black,padding: pw.EdgeInsets.only(left: 20.0),style: pw.TextStyle(lineSpacing: 1.2)),
                          pw.Padding(padding: pw.EdgeInsets.only(left: 21.0,top: 5.0,bottom: 5.0),
                              child:pw.Column(
                                  crossAxisAlignment: pw.CrossAxisAlignment.start,
                                  children: [
                                    pw.Text("GenAI Job Simulation at BCG",style: pw.TextStyle(fontWeight: pw.FontWeight.bold)),
                                    pw.SizedBox(height: 5),
                                    pw.Text("02/10/2024",style: pw.TextStyle(color:PdfColor.fromHex("#808080")))
                                  ])),
                          pw.Bullet(text: "trained a simple chatbot using financial documents using python and matplotlib",bulletSize: 3.0,bulletColor: PdfColors.black,padding: pw.EdgeInsets.only(left: 20.0),style: pw.TextStyle(lineSpacing: 1.2)),
                          pw.Row(
                              children: [
                                pw.Icon(pw.IconData(0xe80c),font: materialIconsFont,size: 15),
                                pw.SizedBox(width: 5),
                                pw.Text("Education",style: pw.TextStyle(fontWeight: pw.FontWeight.bold,fontSize: 15)),
                              ]
                          ),
                          pw.Padding(padding: pw.EdgeInsets.only(left: 21.0,top: 5.0,bottom: 5.0),
                              child:pw.Column(
                                crossAxisAlignment: pw.CrossAxisAlignment.start,
                                  children: [
                                pw.Text("Computer Engineering, SKNCOE, Pune",style: pw.TextStyle(fontWeight: pw.FontWeight.bold)),
                                    pw.SizedBox(height: 5),
                                pw.Text("2022-2026",style: pw.TextStyle(color:PdfColor.fromHex("#808080"))),
                              ])),
                          pw.Padding(padding: pw.EdgeInsets.only(left: 21.0,top: 5.0,bottom: 5.0),
                              child:pw.Column(
                                  crossAxisAlignment: pw.CrossAxisAlignment.start,
                                  children: [
                                    pw.Text("Higher Secondary, JNV, Jalgaon",style: pw.TextStyle(fontWeight: pw.FontWeight.bold)),
                                    pw.SizedBox(height: 5),
                                    pw.Text("2020-2022",style: pw.TextStyle(color:PdfColor.fromHex("#808080"))),
                                  ])),
                          pw.Row(
                              children: [
                                pw.Icon(pw.IconData(0xe02f),font: materialIconsFont,size: 15),
                                pw.SizedBox(width: 5),
                                pw.Text("Projects",style: pw.TextStyle(fontWeight: pw.FontWeight.bold,fontSize: 15)),
                              ]
                          ),
                          pw.Padding(padding: pw.EdgeInsets.only(left: 21.0,top: 5.0,bottom: 5.0),
                              child:pw.Column(
                                  crossAxisAlignment: pw.CrossAxisAlignment.start,
                                  children: [
                                    pw.Text("Cosine",style: pw.TextStyle(fontWeight: pw.FontWeight.bold)),
                                    pw.SizedBox(height: 5),
                                    pw.Text("Flutter | Firebase | Gemini | OpenWeather API")
                                  ])),
                          pw.Bullet(text: "Mobile Application for Smart Agriculture.",bulletSize: 3.0,bulletColor: PdfColors.black,padding: pw.EdgeInsets.only(left: 20.0),style: pw.TextStyle(lineSpacing: 1.2)),
                          pw.Padding(padding: pw.EdgeInsets.only(left: 21.0,top: 5.0,bottom: 5.0),
                              child:pw.Column(
                                  crossAxisAlignment: pw.CrossAxisAlignment.start,
                                  children: [
                                    pw.Text("Digit Matching Cricket",style: pw.TextStyle(fontWeight: pw.FontWeight.bold)),
                                    pw.SizedBox(height: 5),
                                    pw.Text("Flutter | Firebase | Firestore | Gemini")
                                  ])),
                          pw.Bullet(text: "Mobile Application to play digit matching cricket with bot.",bulletSize: 3.0,bulletColor: PdfColors.black,padding: pw.EdgeInsets.only(left: 20.0),style: pw.TextStyle(lineSpacing: 1.2)),
                        ]
                      ),flex: 2),
                      pw.Expanded(child:pw.Padding(
                          padding: pw.EdgeInsets.only(left: 20.0),
                          child:  pw.Column(
                            crossAxisAlignment: pw.CrossAxisAlignment.start,
                        children: [
                          pw.Padding(padding: pw.EdgeInsets.only(top: 5,bottom: 5),child:
                          pw.Text("Details",style: pw.TextStyle(fontWeight: pw.FontWeight.bold))),
                          pw.Text("Ambegaon BK"),
                          pw.Text("Pune, 411041"),
                          pw.Text("Maharashtra, India"),
                          pw.Text("7498503673"),
                          pw.Text("bhaveshpatil7504@gmail.com",style:pw.TextStyle(color: PdfColors.green600)),
                          pw.SizedBox(height: 10),
                          pw.Padding(padding: pw.EdgeInsets.only(top: 5,bottom: 5),child:
                          pw.Text("Skills",style: pw.TextStyle(fontWeight: pw.FontWeight.bold))),
                          pw.Text("Python"),
                          ProgressBar(progress: 90),
                          pw.Text("Flutter"),
                          ProgressBar(progress: 80),
                          pw.Text("Java"),
                          ProgressBar(progress: 60),
                          pw.Text("Django"),
                          ProgressBar(progress: 50),
                          pw.Text("MySQL"),
                          ProgressBar(progress: 90),
                          pw.Text("MongoDB"),
                          ProgressBar(progress: 30),
                          pw.SizedBox(height: 10),
                          pw.Padding(padding: pw.EdgeInsets.only(top: 5,bottom: 5),child:
                          pw.Text("Languages",style: pw.TextStyle(fontWeight: pw.FontWeight.bold))),
                          pw.Text("Marathi"),
                          ProgressBar(progress: 100),
                          pw.Text("Hindi"),
                          ProgressBar(progress: 90),
                          pw.Text("English"),
                          ProgressBar(progress: 80),
                        ]
                      )),flex: 1)

                    ]
                  )
                  )
                ]
            );
          }
      )
    );
    final output = await getTemporaryDirectory();
    final file = File('${output.path}/example.pdf');
    await file.writeAsBytes(await pdf.save());
    return file;
  }
}