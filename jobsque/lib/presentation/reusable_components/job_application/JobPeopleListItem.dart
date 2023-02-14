import 'package:flutter/material.dart';

class JobPeopleListItem extends StatelessWidget {
  const JobPeopleListItem({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.only(top: 24),
      child: Row(
        children: [
          Image.asset('assets/DimasProfile.png'),
          Padding(
            padding: const EdgeInsets.only(left: 12),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text('Dimas Adi Saputro',
                    style: TextStyle(
                        fontFamily: 'SF Pro Display',
                        fontWeight: FontWeight.w500,
                        fontSize: 14,
                        color: Color.fromARGB(255, 17, 24, 39))),
                Padding(padding: const EdgeInsets.only(top: 4)),
                Text(
                  'Senior UI/UX Designer at Twitter',
                  style: TextStyle(
                      fontFamily: 'SF Pro Display',
                      fontWeight: FontWeight.w400,
                      fontSize: 12,
                      color: Color.fromARGB(255, 75, 85, 99)),
                ),
              ],
            ),
          ),
          Expanded(
              child: Column(
            crossAxisAlignment: CrossAxisAlignment.end,
            children: [
              Text('Work during',
                  style: TextStyle(
                      fontFamily: 'SF Pro Display',
                      fontWeight: FontWeight.w400,
                      fontSize: 12,
                      color: Color.fromARGB(255, 75, 85, 99))),
              Padding(padding: const EdgeInsets.only(top: 4)),
              Text('5 Years',
                  style: TextStyle(
                      fontFamily: 'SF Pro Display',
                      fontWeight: FontWeight.w400,
                      fontSize: 12,
                      color: Color.fromARGB(255, 51, 102, 255))),
            ],
          )),
        ],
      ),
    );
  }
}
