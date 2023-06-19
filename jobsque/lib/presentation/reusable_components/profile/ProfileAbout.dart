import 'package:flutter/material.dart';

import 'package:sizer/sizer.dart';

// ignore: must_be_immutable
class ProfileAbout extends StatefulWidget {
  ProfileAbout({super.key, required this.controller}) : editMode = false;

  String aboutText = 'I'
      'm Rafif Dian Axelingga, I’m UI/UX Designer, I have experience designing UI Design for approximately 1 year. I am currently joining the Vektora studio team based in Surakarta, Indonesia.I am a person who has a high spirit and likes to work to achieve what I dream of.';
  bool editMode;
  final TextEditingController controller;
  double Height(double h) {
    return ((h / 756) * 100).h;
  }

  double Width(double w) {
    return ((w / 375) * 100).w;
  }

  @override
  State<ProfileAbout> createState() => _ProfileAboutState();
}

class _ProfileAboutState extends State<ProfileAbout> {
  @override
  void initState() {
    widget.controller.text = widget.aboutText;
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Padding(
        padding:
            EdgeInsets.only(left: widget.Width(24), right: widget.Width(24)),
        child: Column(
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  'About',
                  style: TextStyle(
                      fontFamily: 'SF Pro Display',
                      fontWeight: FontWeight.w500,
                      fontSize: 14,
                      color: Color.fromARGB(255, 107, 114, 128)),
                ),
                widget.editMode
                    ? IconButton(
                        padding: EdgeInsets.all(0),
                        splashRadius: 20,
                        // constraints:
                        //     BoxConstraints(maxHeight: 40, maxWidth: 60),
                        onPressed: () {
                          setState(() {
                            widget.editMode = !widget.editMode;
                            widget.aboutText = widget.controller.text;
                          });
                        },
                        icon: Text(
                          'Save',
                          style: TextStyle(
                              fontFamily: 'SF Pro Display',
                              fontWeight: FontWeight.w500,
                              fontSize: 14,
                              color: Color.fromARGB(255, 51, 102, 255)),
                        ),
                      )
                    : IconButton(
                        splashRadius: 20,
                        // constraints:
                        //     BoxConstraints(maxHeight: 40, maxWidth: 40),
                        onPressed: () {
                          setState(() {
                            widget.editMode = !widget.editMode;
                          });
                        },
                        icon: Text(
                          'Edit',
                          style: TextStyle(
                              fontFamily: 'SF Pro Display',
                              fontWeight: FontWeight.w500,
                              fontSize: 14,
                              color: Color.fromARGB(255, 51, 102, 255)),
                        ),
                      ),
              ],
            ),
            widget.editMode
                ? TextFormField(
                    decoration: InputDecoration(
                      enabledBorder: OutlineInputBorder(
                        borderSide: BorderSide(
                          color: Color(0xFFD1D5DB),
                          width: 1,
                        ),
                        borderRadius: BorderRadius.circular(8),
                      ),
                      focusedBorder: OutlineInputBorder(
                        borderSide: BorderSide(
                          color: Color.fromARGB(255, 51, 102, 255),
                          width: 1,
                        ),
                        borderRadius: BorderRadius.circular(8),
                      ),
                    ),
                    style: TextStyle(
                        fontFamily: 'SF Pro Display',
                        height: 1.3,
                        fontWeight: FontWeight.w400,
                        fontSize: 14,
                        color: Color.fromARGB(255, 107, 114, 128)),
                    maxLines: 7,
                    controller: widget.controller,
                  )
                : Text(
                    widget.aboutText,
                    style: TextStyle(
                        fontFamily: 'SF Pro Display',
                        fontWeight: FontWeight.w400,
                        height: 1.3,
                        fontSize: 14,
                        color: Color.fromARGB(255, 107, 114, 128)),
                  )
          ],
        ),
      ),
    );
  }
}
