import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:jobsque/constants/pages.dart' as pages;

class AppSearchBar extends StatefulWidget {
  const AppSearchBar({super.key});

  @override
  State<AppSearchBar> createState() => _AppSearchBarState();
}

class _AppSearchBarState extends State<AppSearchBar> {
  @override
  Widget build(BuildContext context) {
    return TextFormField(
      onTap: () {
        Navigator.pushNamed(context, pages.jobSearchPageScreen);
      },
      autofocus: false,
      decoration: InputDecoration(
          isDense: true,
          hintText: 'Search',
          hintStyle: TextStyle(
              color: Color.fromARGB(255, 156, 163, 175),
              fontFamily: 'SF Pro Display',
              fontSize: 14,
              fontWeight: FontWeight.w400),
          prefixIcon: SvgPicture.asset(
            'assets/icons/search-normal.svg',
            fit: BoxFit.scaleDown,
          ),
          border: OutlineInputBorder(
              borderSide: BorderSide(
                color: Color(0xFFD1D5DB),
                width: 1,
              ),
              borderRadius: BorderRadius.circular(100)),
          enabledBorder: OutlineInputBorder(
              borderSide: BorderSide(
                color: Color(0xFFD1D5DB),
                width: 1,
              ),
              borderRadius: BorderRadius.circular(100)),
          disabledBorder: OutlineInputBorder(
              borderSide: BorderSide(
                color: Color(0xFFD1D5DB),
                width: 1,
              ),
              borderRadius: BorderRadius.circular(100)),
          focusedBorder: OutlineInputBorder(
              borderSide: BorderSide(
                color: Color(0xFFD1D5DB),
                width: 1,
              ),
              borderRadius: BorderRadius.circular(100))),
    );
  }
}
