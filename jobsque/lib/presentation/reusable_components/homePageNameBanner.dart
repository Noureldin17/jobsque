import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

class HomePageBanner extends StatelessWidget {
  const HomePageBanner({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Padding(
          padding: EdgeInsetsDirectional.fromSTEB(24, 26, 0, 0),
          child: Container(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  'Hi, Rafif Dian👋',
                  style: TextStyle(
                      fontFamily: 'SF Pro Display',
                      fontWeight: FontWeight.w500,
                      fontSize: 24,
                      color: Color.fromARGB(255, 17, 24, 39)),
                ),
                Padding(
                  padding: const EdgeInsetsDirectional.fromSTEB(0, 8, 0, 0),
                  child: Text(
                    'Create a better future for yourself here',
                    style: TextStyle(
                        fontFamily: 'SF Pro Display',
                        fontWeight: FontWeight.w500,
                        fontSize: 14,
                        color: Color.fromARGB(255, 107, 114, 128)),
                  ),
                )
              ],
            ),
          ),
        ),
        Padding(
          padding: EdgeInsetsDirectional.fromSTEB(0, 28, 24, 0),
          child: Container(
            width: (48 / 375) * MediaQuery.of(context).size.width,
            height: (48 / 812) * MediaQuery.of(context).size.height,
            decoration: BoxDecoration(
              color: Color(0xFFAFAFA),
              shape: BoxShape.circle,
              border: Border.all(color: Color.fromARGB(255, 209, 213, 219)),
            ),
            child: SvgPicture.asset(
              'assets/icons/notification.svg',
              fit: BoxFit.scaleDown,
            ),
          ),
        ),
      ],
    );
  }
}
