import 'package:flutter/material.dart';

import 'package:flutter_svg/flutter_svg.dart';
import 'package:sizer/sizer.dart';

class FileUploadItem extends StatefulWidget {
  const FileUploadItem({super.key});
  double Height(double h) {
    return ((h / 812) * 100).h;
  }

  double Width(double w) {
    return ((w / 375) * 100).w;
  }

  @override
  State<FileUploadItem> createState() => _FileUploadItemState();
}

class _FileUploadItemState extends State<FileUploadItem> {
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.only(top: 16, bottom: 16, left: 15, right: 0),
      height: widget.Height(74),
      width: widget.Width(327),
      decoration: BoxDecoration(
          border:
              Border.all(width: 1, color: Color.fromARGB(255, 209, 213, 219)),
          borderRadius: BorderRadius.circular(8)),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Container(
            child: Row(
              children: [
                SvgPicture.asset(
                  'assets/pdf.svg',
                  fit: BoxFit.contain,
                ),
                Padding(
                  padding: const EdgeInsets.only(left: 12),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        'Rafif Dian.CV',
                        style: TextStyle(
                            fontSize: 14,
                            fontWeight: FontWeight.w400,
                            fontFamily: 'SF Pro Display',
                            color: Color.fromARGB(255, 17, 24, 39)),
                      ),
                      Padding(padding: EdgeInsets.only(top: 5)),
                      Text('CV.pdf 300KB',
                          style: TextStyle(
                              fontSize: 12,
                              fontWeight: FontWeight.w400,
                              fontFamily: 'SF Pro Display',
                              color: Color.fromARGB(255, 107, 114, 128))),
                    ],
                  ),
                ),
              ],
            ),
          ),
          Container(
            child: Row(
              children: [
                IconButton(
                  onPressed: () {},
                  icon: SvgPicture.asset(
                    'assets/edit-2.svg',
                    fit: BoxFit.none,
                    height: 24,
                    width: 24,
                  ),
                ),
                IconButton(
                    onPressed: () {},
                    icon: SvgPicture.asset(
                      'assets/icons/close-circle.svg',
                      fit: BoxFit.none,
                      height: 24,
                      width: 24,
                    ))
              ],
            ),
          )
        ],
      ),
    );
  }
}
