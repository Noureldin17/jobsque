// import 'package:flutter/src/widgets/container.dart';
// import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/material.dart';
import 'package:sizer/sizer.dart';

class PrimaryButton extends StatelessWidget {
  final String? buttonText;
  final Function OnPrimaryButtonPressed;
  const PrimaryButton(
      {super.key,
      required this.buttonText,
      required this.OnPrimaryButtonPressed});

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      onPressed: () {
        OnPrimaryButtonPressed();
      },
      child: Text(buttonText!),
      style: ElevatedButton.styleFrom(
        minimumSize: Size(87.2.w, 5.92.h),
        backgroundColor: Color(0xFF3366FF),
        textStyle: TextStyle(
          fontFamily: 'SF Pro Display',
          color: Colors.white,
          fontWeight: FontWeight.w500,
        ),
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(20),
        ),
      ),
    );
  }
}
