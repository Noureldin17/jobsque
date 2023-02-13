import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:sizer/sizer.dart';

class JobInfoCard extends StatefulWidget {
  const JobInfoCard({super.key});

  @override
  State<JobInfoCard> createState() => _JobInfoCardState();
}

class _JobInfoCardState extends State<JobInfoCard> {
  double? Height(double h) {
    return ((h / 756) * 100).h;
  }

  double? Width(double w) {
    return ((w / 375) * 100).w;
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      height: ((183 / 756)) * MediaQuery.of(context).size.height,
      width: ((300 / 375)) * MediaQuery.of(context).size.width,
      decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(12),
          color: Color.fromARGB(255, 9, 26, 122)),
      child: Column(
        children: [
          Padding(
            padding: EdgeInsetsDirectional.fromSTEB(
                Width(16)!, Height(20)!, Width(16)!, 0),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Container(
                  height: Height(40)!,
                  width: Width(40)!,
                  padding: EdgeInsets.all(5),
                  child: SvgPicture.asset('assets/icons/bezier.svg'),
                  decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.circular(8)),
                ),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      'Product Designer',
                      style: TextStyle(
                        fontFamily: 'SF Pro Display',
                        fontWeight: FontWeight.w500,
                        fontSize: 18,
                        color: Colors.white,
                      ),
                    ),
                    Padding(
                        padding: EdgeInsetsDirectional.fromSTEB(
                            0, Height(4)!, 0, 0)),
                    Text(
                      'Zoom • United States',
                      style: TextStyle(
                        fontFamily: 'SF Pro Display',
                        fontWeight: FontWeight.w500,
                        fontSize: 12,
                        color: Color.fromARGB(255, 156, 163, 175),
                      ),
                    ),
                  ],
                ),
                SvgPicture.asset('assets/icons/navbar_icons/archive-minus.svg')
              ],
            ),
          ),
          Padding(
            padding: EdgeInsetsDirectional.fromSTEB(
                Width(16)!, Height(20)!, Width(16)!, 0),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Container(
                  child: Center(
                    child: Text(
                      'Fulltime',
                      style: TextStyle(
                        fontFamily: 'SF Pro Display',
                        fontWeight: FontWeight.w400,
                        fontSize: 12,
                        color: Colors.white,
                      ),
                    ),
                  ),
                  width: Width(87),
                  height: Height(30),
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(100),
                      color: Color.fromARGB(36, 255, 255, 255)),
                ),
                Container(
                  child: Center(
                    child: Text(
                      'Remote',
                      style: TextStyle(
                        fontFamily: 'SF Pro Display',
                        fontWeight: FontWeight.w400,
                        fontSize: 12,
                        color: Colors.white,
                      ),
                    ),
                  ),
                  width: Width(87),
                  height: Height(30),
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(100),
                      color: Color.fromARGB(36, 255, 255, 255)),
                ),
                Container(
                  child: Center(
                    child: Text(
                      'Design',
                      style: TextStyle(
                        fontFamily: 'SF Pro Display',
                        fontWeight: FontWeight.w400,
                        fontSize: 12,
                        color: Colors.white,
                      ),
                    ),
                  ),
                  width: Width(87),
                  height: Height(30),
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(100),
                      color: Color.fromARGB(36, 255, 255, 255)),
                ),
              ],
            ),
          ),
          Padding(
            padding: EdgeInsetsDirectional.fromSTEB(
                Width(16)!, Height(20)!, Width(16)!, 0),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                RichText(
                    text: TextSpan(children: [
                  TextSpan(
                    text: '\$12K-15K',
                    style: TextStyle(
                        fontFamily: 'SF Pro Display',
                        fontWeight: FontWeight.w500,
                        fontSize: 20),
                  ),
                  TextSpan(
                    text: '/Month',
                    style: TextStyle(
                        color: Color.fromARGB(125, 255, 255, 255),
                        fontFamily: 'SF Pro Display',
                        fontWeight: FontWeight.w500,
                        fontSize: 12),
                  ),
                ])),
                ElevatedButton(
                  onPressed: () {
                    print(MediaQuery.of(context).size.height);
                    print(MediaQuery.of(context).size.width);
                    print(100.h);
                    print(100.w);
                  },
                  child: Text('Apply now'),
                  style: ElevatedButton.styleFrom(
                    minimumSize: Size(Width(96)!, Height(32)!),
                    backgroundColor: Color(0xFF3366FF),
                    textStyle: TextStyle(
                      fontSize: 12,
                      fontFamily: 'SF Pro Display',
                      color: Colors.white,
                      fontWeight: FontWeight.w500,
                    ),
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(20),
                    ),
                  ),
                )
              ],
            ),
          )
        ],
      ),
    );
  }
}
