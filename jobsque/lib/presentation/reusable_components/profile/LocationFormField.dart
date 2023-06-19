import 'package:flutter/material.dart';

import 'package:flutter_svg/flutter_svg.dart';

class LocationFormField extends StatefulWidget {
  const LocationFormField({super.key});

  @override
  State<LocationFormField> createState() => _LocationFormFieldState();
}

class _LocationFormFieldState extends State<LocationFormField> {
  TextEditingController controller = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(top: 6, bottom: 16),
      child: TextFormField(
        controller: controller,
        autofocus: false,
        decoration: InputDecoration(
          prefixIcon: SvgPicture.asset(
            'assets/icons/location.svg',
            fit: BoxFit.scaleDown,
          ),
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
