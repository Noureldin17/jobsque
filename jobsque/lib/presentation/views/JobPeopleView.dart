import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import 'package:flutter_svg/svg.dart';
import 'package:jobsque/presentation/reusable_components/job_application/JobPeopleListItem.dart';

class JobPeopleTabView extends StatelessWidget {
  const JobPeopleTabView({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(
        left: 24,
        right: 24,
      ),
      child: Container(
        child: Column(
          children: [
            Padding(padding: EdgeInsets.only(top: 29)),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text('6 Employees For',
                        style: TextStyle(
                            fontFamily: 'SF Pro Display',
                            fontSize: 14,
                            fontWeight: FontWeight.w500,
                            color: Color.fromARGB(255, 17, 24, 39))),
                    Padding(padding: EdgeInsets.only(top: 4)),
                    Text('UI/UX Design',
                        style: TextStyle(
                            fontFamily: 'SF Pro Display',
                            fontSize: 12,
                            fontWeight: FontWeight.w400,
                            color: Color.fromARGB(255, 156, 163, 175))),
                  ],
                ),
                Container(
                  constraints: BoxConstraints(maxWidth: 130, minWidth: 88),
                  padding: EdgeInsetsDirectional.fromSTEB((10), 0, (0), 0),
                  child: Row(
                    mainAxisSize: MainAxisSize.min,
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text(
                        'UI/UX Designer',
                        style: TextStyle(
                          fontFamily: 'SF Pro Display',
                          fontWeight: FontWeight.w400,
                          fontSize: 12,
                          color: Color.fromARGB(255, 17, 24, 39),
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: SvgPicture.asset(
                          'assets/icons/arrow-down.svg',
                          color: Color.fromARGB(255, 17, 24, 39),
                        ),
                      )
                    ],
                  ),
                  // width: (88),
                  height: (38),
                  decoration: BoxDecoration(
                      border: Border.all(
                          color: Color.fromARGB(255, 209, 213, 219), width: 1),
                      borderRadius: BorderRadius.circular(100),
                      color: Color.fromARGB(255, 255, 255, 255)),
                ),
              ],
            ),

            Expanded(
              child: ListView.builder(
                physics: ScrollPhysics(parent: null),
                shrinkWrap: true,
                itemCount: 8,
                itemBuilder: (context, index) => JobPeopleListItem(),
              ),
            )
            // JobPeopleListItem(),
            // JobPeopleListItem(),
            // JobPeopleListItem(),
            // JobPeopleListItem(),
            // JobPeopleListItem(),
            // JobPeopleListItem(),
            // JobPeopleListItem(),
          ],
        ),
      ),
    );
  }
}
