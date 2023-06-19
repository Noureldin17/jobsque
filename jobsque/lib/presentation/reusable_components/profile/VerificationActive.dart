import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:sizer/sizer.dart';

class VerificationActive extends StatefulWidget {
  const VerificationActive({super.key});

  @override
  State<VerificationActive> createState() => _VerificationActiveState();
}

class _VerificationActiveState extends State<VerificationActive> {
  double Height(double h) {
    return ((h / 812) * 100).h;
  }

  double Width(double w) {
    return ((w / 375) * 100).w;
  }

  @override
  Widget build(BuildContext context) {
    List<DropdownMenuItem> list = [
      DropdownMenuItem(
        child: Text('Telephone number (SMS)'),
        value: 'Telephone number (SMS)',
      ),
      // DropdownMenuItem(
      //   child: Text('Telephone number (SMS)'),
      //   value: 'Telephone number (SMS)',
      // ),
      // DropdownMenuItem(
      //   child: Text('Telephone number (SMS)'),
      //   value: 'Telephone number (SMS)',
      // ),
    ];
    return Padding(
      padding:
          EdgeInsets.symmetric(vertical: Height(20), horizontal: Width(24)),
      child: Column(
        children: [
          Align(
            alignment: Alignment.centerLeft,
            child: Text(
              'Enter your old password',
              style: TextStyle(
                  fontFamily: 'SF Pro Display',
                  fontWeight: FontWeight.w400,
                  fontSize: 16,
                  color: Color.fromARGB(255, 17, 24, 39)),
            ),
          ),
          Padding(
            padding: EdgeInsets.only(top: Height(12), bottom: Height(16)),
            child: Container(
              padding: EdgeInsets.symmetric(
                  horizontal: Width(16), vertical: Height(2)),
              width: Width(327),
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(8),
                  border:
                      Border.all(color: Color.fromARGB(255, 209, 213, 219))),
              child: DropdownButtonHideUnderline(
                child: DropdownButton(
                  underline: Container(color: Colors.white),
                  value: 'Telephone number (SMS)',
                  icon: SvgPicture.asset('assets/icons/arrow-down.svg',
                      color: Color.fromARGB(255, 17, 24, 39)),
                  style: TextStyle(
                      fontFamily: 'SF Pro Display',
                      fontWeight: FontWeight.w400,
                      fontSize: 16,
                      color: Color.fromARGB(255, 17, 24, 39)),
                  items: list,
                  onChanged: (value) {
                    setState(() {});
                  },
                ),
              ),
            ),
          ),
          Text(
            'Note : Turning this feature will sign you out anywhere you’re currently signed in. We will then require you to enter a verification code the first time you sign with a new device or Joby mobile application.',
            maxLines: 4,
            style: TextStyle(
                fontFamily: 'SF Pro Display',
                fontWeight: FontWeight.w400,
                height: 1.3,
                fontSize: 14,
                color: Color.fromARGB(255, 107, 114, 128)),
          )
        ],
      ),
    );
  }
}
