import 'package:flutter/material.dart';

import 'package:flutter_svg/flutter_svg.dart';

class ModalSheetButton extends StatefulWidget {
  const ModalSheetButton(
      {super.key,
      required this.Text,
      required this.iconAsset,
      required this.OnPressed})
      : hasIcon = true;
  const ModalSheetButton.NoIcon(
      {super.key, required this.Text, required this.OnPressed})
      : iconAsset = '',
        hasIcon = false;
  final bool hasIcon;
  final String iconAsset;
  final String Text;
  final Function OnPressed;
  @override
  State<ModalSheetButton> createState() => _ModalSheetButtonState();
}

class _ModalSheetButtonState extends State<ModalSheetButton> {
  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      style: ElevatedButton.styleFrom(
        side: BorderSide(color: Color.fromARGB(255, 209, 213, 219)),
        minimumSize: Size(347, 49),
        maximumSize: Size(347, 49),
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(100)),
        backgroundColor: Colors.white,
        elevation: 0,
      ),
      onPressed: () {
        widget.OnPressed();
      },
      child: Padding(
        padding: const EdgeInsets.all(14),
        child: Row(
          mainAxisSize: MainAxisSize.min,
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            if (widget.hasIcon)
              SvgPicture.asset(
                widget.iconAsset,
                color: Color.fromARGB(255, 17, 24, 39),
                fit: BoxFit.scaleDown,
                height: 20,
                width: 20,
              ),
            Padding(
              padding: widget.hasIcon
                  ? EdgeInsets.only(left: 10)
                  : EdgeInsets.only(left: 0),
              child: Text(widget.Text,
                  style: TextStyle(
                      fontSize: 16,
                      fontWeight: FontWeight.w500,
                      fontFamily: 'SF Pro Display',
                      color: Color.fromARGB(255, 17, 24, 39))),
            ),
            Spacer(),
            SvgPicture.asset('assets/icons/arrow-right_button.svg')
          ],
        ),
      ),
    );
  }
}
