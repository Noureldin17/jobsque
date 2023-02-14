import 'package:dotted_border/dotted_border.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:sizer/sizer.dart';

class FileUploadForm extends StatefulWidget {
  const FileUploadForm({super.key});
  double Height(double h) {
    return ((h / 812) * 100).h;
  }

  double Width(double w) {
    return ((w / 375) * 100).w;
  }

  @override
  State<FileUploadForm> createState() => _FileUploadFormState();
}

class _FileUploadFormState extends State<FileUploadForm> {
  @override
  Widget build(BuildContext context) {
    return ClipRRect(
        borderRadius: BorderRadius.circular(8),
        child: DottedBorder(
          strokeWidth: 3,
          color: Color.fromARGB(255, 102, 143, 255),
          strokeCap: StrokeCap.round,
          dashPattern: [4, 4],
          child: Container(
            padding: EdgeInsets.fromLTRB(widget.Width(16), widget.Height(16),
                widget.Width(16), widget.Height(16)),
            height: widget.Height(221),
            width: widget.Width(327),
            decoration: BoxDecoration(
                color: Color.fromARGB(255, 236, 242, 255),
                border: Border.all(width: 0, color: Colors.transparent)),
            child: Column(
              children: [
                Container(
                  width: widget.Width(56),
                  height: widget.Height(56),
                  decoration: BoxDecoration(
                      shape: BoxShape.circle,
                      color: Color.fromARGB(255, 214, 228, 255)),
                  child: SvgPicture.asset(
                    'assets/document-upload.svg',
                    fit: BoxFit.scaleDown,
                  ),
                ),
                Padding(padding: EdgeInsets.only(top: widget.Height(16))),
                Text(
                  'Upload your other file',
                  style: TextStyle(
                      fontSize: 18,
                      fontWeight: FontWeight.w500,
                      fontFamily: 'SF Pro Display',
                      color: Color.fromARGB(255, 17, 24, 39)),
                ),
                Padding(padding: EdgeInsets.only(top: widget.Height(8))),
                Text('Max. file size 10 MB',
                    style: TextStyle(
                        fontSize: 12,
                        fontWeight: FontWeight.w400,
                        fontFamily: 'SF Pro Display',
                        color: Color.fromARGB(255, 107, 114, 128))),
                Padding(padding: EdgeInsets.only(top: widget.Height(20))),
                ElevatedButton(
                  style: ElevatedButton.styleFrom(
                    side: BorderSide(color: Color.fromARGB(255, 102, 143, 255)),
                    minimumSize: Size(widget.Width(295), widget.Height(40)),
                    shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(100)),
                    backgroundColor: Color.fromARGB(255, 214, 228, 255),
                    elevation: 0,
                  ),
                  onPressed: () {},
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      SvgPicture.asset('assets/export.svg'),
                      Padding(
                        padding: const EdgeInsets.only(left: 10),
                        child: Text('Add file',
                            style: TextStyle(
                                fontSize: 16,
                                fontWeight: FontWeight.w500,
                                fontFamily: 'SF Pro Display',
                                color: Color.fromARGB(255, 102, 143, 255))),
                      )
                    ],
                  ),
                )
              ],
            ),
          ),
        ));
  }
}
