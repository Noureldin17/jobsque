import 'package:flutter/material.dart';

class JobCompanyTabView extends StatelessWidget {
  const JobCompanyTabView({super.key});
  final String about =
      'Understanding Recruitment is an award-winning technology, software and digital recruitment consultancy with headquarters in St. Albans, Hertfordshire.We also have a US office in Boston, Massachusetts specialising in working closely with highly skilled individuals seeking their next career move within Next Gen Tech, Backend Engineering, and Artificial Intelligence.We recently celebrated our first decade in business and over the years have been recognised with several industry awards including '
      'Best Staffing Firm to Work For 2018'
      '​ at the SIA Awards for the third consecutive year and ‘Business of the Year 2017’ at the SME Hertfordshire Business Awards.Our teams of specialists operate across all areas of Technology and Digital, including Java, JavaScript, Python, .Net, DevOps & SRE, SDET, Artificial Intelligence, Machine Learning, AI, Digital, Quantum Computing, Hardware Acceleration, Digital, Charity, Fintech, and the Public Sector.';
  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Padding(
        padding: EdgeInsets.only(left: 24, right: 24),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Padding(padding: EdgeInsets.only(top: 27)),
            Text(
              'Contact Us',
              style: TextStyle(
                  fontFamily: 'SF Pro Display',
                  fontWeight: FontWeight.w500,
                  fontSize: 14,
                  color: Color.fromARGB(255, 17, 24, 39)),
            ),
            Padding(padding: EdgeInsets.only(top: 12)),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Container(
                  height: 56,
                  width: 156,
                  padding:
                      EdgeInsets.only(top: 8, bottom: 8, left: 12, right: 12),
                  decoration: BoxDecoration(
                    border:
                        Border.all(color: Color.fromARGB(255, 229, 231, 235)),
                    borderRadius: BorderRadius.circular(8),
                  ),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        'Email',
                        style: TextStyle(
                            fontFamily: 'SF Pro Display',
                            fontSize: 12,
                            fontWeight: FontWeight.w400,
                            color: Color.fromARGB(255, 156, 163, 175)),
                      ),
                      Padding(padding: EdgeInsets.only(top: 8)),
                      Text(
                        'twitter@mail.com',
                        style: TextStyle(
                            fontFamily: 'SF Pro Display',
                            fontSize: 14,
                            fontWeight: FontWeight.w500,
                            color: Color.fromARGB(255, 17, 24, 39)),
                      ),
                    ],
                  ),
                ),
                Container(
                  height: 56,
                  width: 156,
                  padding:
                      EdgeInsets.only(top: 8, bottom: 8, left: 12, right: 12),
                  decoration: BoxDecoration(
                    border:
                        Border.all(color: Color.fromARGB(255, 229, 231, 235)),
                    borderRadius: BorderRadius.circular(8),
                  ),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        'Website',
                        style: TextStyle(
                            fontFamily: 'SF Pro Display',
                            fontSize: 12,
                            fontWeight: FontWeight.w400,
                            color: Color.fromARGB(255, 156, 163, 175)),
                      ),
                      Padding(padding: EdgeInsets.only(top: 8)),
                      Text(
                        'https://twitter.com',
                        style: TextStyle(
                            fontFamily: 'SF Pro Display',
                            fontSize: 14,
                            fontWeight: FontWeight.w500,
                            color: Color.fromARGB(255, 17, 24, 39)),
                      ),
                    ],
                  ),
                ),
              ],
            ),
            Padding(padding: EdgeInsets.only(top: 24)),
            Text(
              'About Company',
              style: TextStyle(
                  fontFamily: 'SF Pro Display',
                  fontWeight: FontWeight.w500,
                  fontSize: 14,
                  color: Color.fromARGB(255, 17, 24, 39)),
            ),
            Padding(padding: EdgeInsets.only(top: 16)),
            Text(
              about,
              style: TextStyle(
                  height: 1.4,
                  fontFamily: 'SF Pro Display',
                  fontWeight: FontWeight.w400,
                  fontSize: 12,
                  color: Color.fromARGB(255, 75, 85, 99)),
            ),
          ],
        ),
      ),
    );
  }
}
