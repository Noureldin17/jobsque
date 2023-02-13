import 'package:flutter/cupertino.dart';
import 'package:flutter_svg/flutter_svg.dart';

class SearchNotFound extends StatelessWidget {
  const SearchNotFound({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Padding(
          padding: EdgeInsets.only(top: 90, bottom: 24),
          child: Center(
            child: SvgPicture.asset(
              'assets/icons/search-illust.svg',
            ),
          ),
        ),
        Text(
          'Search not found',
          style: TextStyle(
              fontFamily: 'SF Pro Display',
              fontSize: 24,
              fontWeight: FontWeight.w500,
              color: Color.fromARGB(255, 17, 24, 39)),
        ),
        Padding(
          padding: EdgeInsets.only(left: 51, right: 51, top: 12),
          child: Text(
            'Try searching with different keywords so we can show you',
            style: TextStyle(
                fontFamily: 'SF Pro Display',
                fontSize: 16,
                fontWeight: FontWeight.w400,
                color: Color.fromARGB(255, 107, 114, 128)),
            textAlign: TextAlign.center,
          ),
        ),
      ],
    );
  }
}
