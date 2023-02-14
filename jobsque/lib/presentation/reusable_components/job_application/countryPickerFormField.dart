import 'package:fl_country_code_picker/fl_country_code_picker.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class CountryPickerField extends StatefulWidget {
  const CountryPickerField({super.key, this.controller});
  final TextEditingController? controller;
  // final String? hinttext;
  @override
  State<CountryPickerField> createState() => _CountryPickerFieldState();
}

class _CountryPickerFieldState extends State<CountryPickerField> {
  final countryPicker = FlCountryCodePicker();
  CountryCode? countryCode;
  @override
  Widget build(BuildContext context) {
    return TextFormField(
      keyboardType: TextInputType.number,
      controller: widget.controller,
      autofocus: false,
      obscureText: false,
      decoration: InputDecoration(
          isDense: true,
          // hintText: widget.hinttext,
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
          prefixIcon: GestureDetector(
              onTap: () async {
                final code = await countryPicker.showPicker(context: context);
                setState(() {
                  countryCode = code;
                });
              },
              child: Container(
                // color: Colors.amber,
                padding: EdgeInsets.only(top: 19, bottom: 19, left: 16),
                // width: 50,
                // height: 10,
                child: Row(
                  mainAxisSize: MainAxisSize.min,
                  children: [
                    Container(
                      width: 24,
                      height: 18,
                      child: countryCode != null
                          ? countryCode!.flagImage
                          : SvgPicture.asset('assets/flag.svg'),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(left: 7),
                      child: SvgPicture.asset(
                        'assets/icons/arrow-down.svg',
                        color: Color.fromARGB(255, 17, 24, 39),
                      ),
                    ),
                    VerticalDivider(
                      width: 8,
                      color: Color.fromARGB(255, 229, 231, 235),
                    ),
                  ],
                ),
              ))),
      style: TextStyle(
        fontFamily: 'SF Pro Display',
        fontWeight: FontWeight.normal,
      ),
    );
  }
}
