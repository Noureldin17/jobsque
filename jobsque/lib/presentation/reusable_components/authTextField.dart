// ignore_for_file: must_be_immutable
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class AuthTextField extends StatefulWidget {
  final String? hinttext;
  final String? prefixIcon;
  String? suffixIcon;
  bool? isHidden;
  final TextInputType? keyboardtype;
  final bool? suffixShowed;
  final TextEditingController? controller;

  AuthTextField(
      {super.key,
      this.hinttext,
      this.prefixIcon,
      this.suffixIcon,
      this.isHidden,
      this.keyboardtype,
      this.controller,
      this.suffixShowed});

  @override
  State<AuthTextField> createState() => _AuthTextFieldState();
}

class _AuthTextFieldState extends State<AuthTextField> {
  @override
  Widget build(BuildContext context) {
    return TextFormField(
      keyboardType: widget.keyboardtype,
      controller: widget.controller,
      autofocus: false,
      obscureText: widget.isHidden!,
      decoration: InputDecoration(
          isDense: true,
          hintText: widget.hinttext,
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
          suffixIcon: widget.suffixIcon != null
              ? IconButton(
                  onPressed: () => {
                        setState(
                          () => {
                            if (widget.isHidden!)
                              {widget.suffixIcon = 'assets/icons/eye.svg'}
                            else
                              {
                                widget.suffixIcon = 'assets/icons/eye-slash.svg'
                              },
                            widget.isHidden = !widget.isHidden!
                          },
                        )
                      },
                  icon: SvgPicture.asset(
                    widget.suffixIcon!,
                    fit: BoxFit.scaleDown,
                    color: Color.fromARGB(255, 156, 163, 175),
                  ))
              : Visibility(
                  child: SvgPicture.asset(widget.prefixIcon!,
                      fit: BoxFit.scaleDown,
                      color: Color.fromARGB(255, 156, 163, 175)),
                  visible: false,
                ),
          prefixIcon:
              SvgPicture.asset(widget.prefixIcon!, fit: BoxFit.scaleDown)),
      style: TextStyle(
        fontFamily: 'SF Pro Display',
        fontWeight: FontWeight.normal,
      ),
    );
  }
}
