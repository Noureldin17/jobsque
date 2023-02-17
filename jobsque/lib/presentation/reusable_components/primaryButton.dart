import 'package:flutter/material.dart';
import 'package:sizer/sizer.dart';

// ignore: must_be_immutable
class PrimaryButton extends StatefulWidget {
  final String buttonText;
  final Function OnPrimaryButtonPressed;
  bool? buttonDisabled;
  PrimaryButton(
      {super.key,
      this.buttonDisabled,
      required this.buttonText,
      required this.OnPrimaryButtonPressed});

  @override
  State<PrimaryButton> createState() => _PrimaryButtonState();
}

class _PrimaryButtonState extends State<PrimaryButton> {
  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      onPressed: widget.buttonDisabled == null
          ? () {
              widget.OnPrimaryButtonPressed();
            }
          : null,
      child: Text(widget.buttonText),
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
        // disabledBackgroundColor:
      ),
    );
  }
}
