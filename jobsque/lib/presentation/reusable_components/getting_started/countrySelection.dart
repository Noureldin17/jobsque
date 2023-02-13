import 'package:flutter/material.dart';
// import 'package:flutter_svg/flutter_svg.dart';

// ignore: must_be_immutable
class CountryItem extends StatefulWidget {
  CountryItem({super.key, this.Country, this.CountryAsset});
  String? Country;
  String? CountryAsset;

  Color selectedColor = Color.fromARGB(255, 214, 228, 255);
  Color unselectedColor = Color.fromARGB(255, 250, 250, 250);
  Color BorderselectedColor = Color.fromARGB(255, 51, 102, 255);
  Color BorderunselectedColor = Color.fromARGB(255, 229, 231, 235);

  bool selected = false;

  @override
  State<CountryItem> createState() => _CountryItemState();
}

class _CountryItemState extends State<CountryItem> {
  @override
  Widget build(BuildContext context) {
    return Padding(
        padding: const EdgeInsetsDirectional.fromSTEB(14, 16, 0, 0),
        child: GestureDetector(
          onTap: () {
            if (widget.selected) {
              setState(() {
                widget.selected = false;
              });
            } else {
              setState(() {
                widget.selected = true;
              });
            }
          },
          child: Container(
            constraints: BoxConstraints(maxWidth: 200, minWidth: 100),
            height: 42,
            decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(100),
                border: Border.all(
                    color: widget.selected
                        ? widget.BorderselectedColor
                        : widget.BorderunselectedColor),
                color: widget.selected
                    ? widget.selectedColor
                    : widget.unselectedColor),
            child: Row(mainAxisSize: MainAxisSize.min, children: [
              Padding(
                padding: const EdgeInsetsDirectional.fromSTEB(10, 8, 8, 8),
                child: Container(
                    child: Image.asset(
                  widget.CountryAsset!,
                  fit: BoxFit.scaleDown,
                  height: 26,
                  width: 26,
                )),
              ),
              Padding(
                padding: const EdgeInsetsDirectional.fromSTEB(0, 0, 8, 0),
                child: Text(
                  widget.Country!,
                  style: TextStyle(
                      fontFamily: 'SF Pro Display',
                      fontSize: 16,
                      fontWeight: FontWeight.w400,
                      color: Color.fromARGB(255, 17, 24, 39)),
                ),
              )
            ]),
          ),
        ));
  }
}
