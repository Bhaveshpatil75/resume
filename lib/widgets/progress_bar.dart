import 'package:pdf/pdf.dart';
import 'package:pdf/widgets.dart' as pw;
class ProgressBar extends pw.StatelessWidget {
  double progress;
   ProgressBar({required this.progress});

  @override
  pw.Widget build(pw.Context context) {
    return pw.Padding(padding: pw.EdgeInsets.only(top: 3.0,bottom: 3.0),child: pw.Row(
      children: [
        pw.Container(
          width: PdfPageFormat.a4.width/4*progress/100,
          color: PdfColor.fromHex("#006400"),
          height: 3,
        ),
        pw.Container(
          width: PdfPageFormat.a4.width/4-PdfPageFormat.a4.width/4*progress/100,
          color: PdfColor.fromHex("#D3D3D3"),
          height: 3,
        )
      ],
    ));
  }
}
