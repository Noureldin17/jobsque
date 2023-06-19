// ignore_for_file: must_be_immutable

import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class InterestsCard extends StatefulWidget {
  InterestsCard({super.key, this.cardIconAsset, this.cardText});

  final String? cardText;
  final String? cardIconAsset;
  bool selected = false;
  Color iconSelected = Color.fromARGB(255, 51, 102, 255);
  Color iconUnSelected = Color.fromARGB(255, 41, 45, 50);
  BoxDecoration selectedDecoration = BoxDecoration(
      borderRadius: BorderRadius.circular(12),
      color: Color.fromARGB(255, 214, 228, 255),
      border: Border.all(
        color: Color.fromARGB(255, 51, 102, 255),
        width: 1,
      ));
  BoxDecoration unselectedDecoration = BoxDecoration(
      borderRadius: BorderRadius.circular(12),
      color: Color(0xFFFAFAFA),
      border: Border.all(
        color: Color(0xFFD1D5DB),
        width: 1,
      ));

  @override
  State<InterestsCard> createState() => _InterestsCardState();
}

class _InterestsCardState extends State<InterestsCard> {
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
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
        child: ConstrainedBox(
          constraints: BoxConstraints(
              minHeight: (125 / 812) * MediaQuery.of(context).size.height,
              minWidth: (156 / 375) * MediaQuery.of(context).size.width,
              maxHeight: 200,
              maxWidth: 200),
          child: Container(
            constraints: BoxConstraints(
                minHeight: (125 / 812) * MediaQuery.of(context).size.height,
                minWidth: (156 / 375) * MediaQuery.of(context).size.width),
            decoration: widget.selected
                ? widget.selectedDecoration
                : widget.unselectedDecoration,
            child: Column(
              mainAxisSize: MainAxisSize.min,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Padding(
                  padding: const EdgeInsetsDirectional.fromSTEB(14, 18, 0, 0),
                  child: Container(
                    width: (48 / 375) * MediaQuery.of(context).size.width,
                    height: (48 / 812) * MediaQuery.of(context).size.height,
                    decoration: BoxDecoration(
                      color: Color(0xFFFAFAFA),
                      shape: BoxShape.circle,
                      border: Border.all(
                        color: widget.selected
                            ? widget.iconSelected
                            : Color.fromARGB(255, 209, 213, 219),
                      ),
                    ),
                    child: SvgPicture.asset(
                      widget.cardIconAsset!,
                      color: widget.selected
                          ? widget.iconSelected
                          : widget.iconUnSelected,
                      fit: BoxFit.scaleDown,
                    ),
                  ),
                ),
                Padding(
                  padding: const EdgeInsetsDirectional.fromSTEB(14, 15, 17, 20),
                  child: Text(
                    widget.cardText!,
                    maxLines: 3,
                    style: TextStyle(
                      fontFamily: 'SF Pro Display',
                      color: Color(0xFF111827),
                      fontSize: 16,
                      fontWeight: FontWeight.normal,
                    ),
                  ),
                )
              ],
            ),
          ),
        ));
  }
}
