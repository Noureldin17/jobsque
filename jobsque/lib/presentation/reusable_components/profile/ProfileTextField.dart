import 'package:flutter/material.dart';

class ProfileTextField extends StatefulWidget {
  const ProfileTextField({super.key});

  @override
  State<ProfileTextField> createState() => _ProfileTextFieldState();
}

class _ProfileTextFieldState extends State<ProfileTextField> {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(top: 6, bottom: 16),
      child: TextFormField(
        // controller: widget.controller,
        autofocus: false,
        decoration: InputDecoration(
          isDense: true,
          hintStyle: TextStyle(
            fontFamily: 'SF Pro Display',
            fontWeight: FontWeight.normal,
          ),
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
          errorBorder: OutlineInputBorder(
            borderSide: BorderSide(
              color: Color(0x00000000),
              width: 1,
            ),
            borderRadius: BorderRadius.circular(8),
          ),
          focusedErrorBorder: OutlineInputBorder(
            borderSide: BorderSide(
              color: Color(0x3366FF),
              width: 1,
            ),
            borderRadius: BorderRadius.circular(8),
          ),
        ),
        style: TextStyle(
          fontFamily: 'SF Pro Display',
          fontWeight: FontWeight.normal,
        ),
      ),
    );
  }
}
