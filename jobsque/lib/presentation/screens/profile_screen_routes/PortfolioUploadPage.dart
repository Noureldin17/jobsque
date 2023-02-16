import 'package:flutter/material.dart';

import 'package:jobsque/presentation/reusable_components/job_application/FileUploadForm.dart';
import 'package:jobsque/presentation/reusable_components/job_application/FileUploadItem.dart';
import 'package:jobsque/presentation/reusable_components/profile/ProfileBar.dart';
import 'package:sizer/sizer.dart';

class PortfolioUploadPage extends StatefulWidget {
  const PortfolioUploadPage({super.key});
  double Height(double h) {
    return ((h / 812) * 100).h;
  }

  double Width(double w) {
    return ((w / 375) * 100).w;
  }

  @override
  State<PortfolioUploadPage> createState() => _PortfolioUploadPageState();
}

class _PortfolioUploadPageState extends State<PortfolioUploadPage> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Sizer(
            builder: (context, orientation, deviceType) => Scaffold(
                  backgroundColor: Colors.white,
                  body: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      ProfileBar.noIcon(
                        BarTitle: 'Portfolio',
                      ),
                      Padding(
                        padding: EdgeInsets.only(
                            left: widget.Width(24),
                            top: widget.Height(36),
                            bottom: widget.Height(16)),
                        child: Text(
                          'Add portfolio here',
                          style: TextStyle(
                              fontFamily: 'SF Pro Display',
                              fontWeight: FontWeight.w500,
                              fontSize: 20,
                              color: Color.fromARGB(255, 17, 24, 39)),
                        ),
                      ),
                      Padding(
                        padding: EdgeInsets.only(
                            left: widget.Width(24),
                            right: widget.Width(24),
                            bottom: widget.Height(8)),
                        child: FileUploadForm(),
                      ),
                      Expanded(
                        child: Container(
                          padding: EdgeInsets.symmetric(
                              horizontal: widget.Width(24)),
                          child: ListView.builder(
                            itemCount: 7,
                            itemBuilder: (context, index) {
                              return Padding(
                                  child: FileUploadItem(),
                                  padding: EdgeInsets.symmetric(
                                      vertical: widget.Height(8)));
                            },
                          ),
                        ),
                      ),
                      // FileUploadItem(),
                      // FileUploadItem(),
                      // FileUploadItem(),
                    ],
                  ),
                )));
  }
}
