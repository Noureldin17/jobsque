import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:intl/intl.dart';
import 'package:sizer/sizer.dart';

class DatePickerField extends StatefulWidget {
  const DatePickerField({super.key});

  @override
  State<DatePickerField> createState() => _ProfileTextFieldState();
}

class _ProfileTextFieldState extends State<DatePickerField> {
  double Height(double h) {
    return ((h / 812) * 100).h;
  }

  double Width(double w) {
    return ((w / 375) * 100).w;
  }

  TextEditingController controller = TextEditingController();
  DateTime dateTime = DateTime.now();

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(top: 6, bottom: 16),
      child: TextFormField(
        controller: controller,
        autofocus: false,
        decoration: InputDecoration(
          suffixIcon: IconButton(
            splashRadius: 20,
            onPressed: () {
              showCupertinoModalPopup(
                context: context,
                builder: (context) => SizedBox(
                  height: Height(250),
                  child: CupertinoDatePicker(
                    backgroundColor: Colors.white,
                    mode: CupertinoDatePickerMode.date,
                    initialDateTime: dateTime,
                    onDateTimeChanged: (value) {
                      setState(() {
                        dateTime = value;

                        //  var x = DateFormat.
                        // print(x);
                        controller.text =
                            '${DateFormat().add_MMMM().format(value)} - ${value.year}';
                      });
                    },
                  ),
                ),
              );
            },
            icon: SvgPicture.asset(
              'assets/icons/calendar.svg',
              height: Height(24),
              width: Width(24),
              fit: BoxFit.scaleDown,
            ),
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
