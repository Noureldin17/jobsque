import 'package:flutter/material.dart';

import 'package:flutter_svg/flutter_svg.dart';
import 'package:jobsque/presentation/reusable_components/PrimaryButton.dart';
import 'package:jobsque/presentation/reusable_components/job_application/CountryPickerFormField.dart';
import 'package:jobsque/presentation/reusable_components/profile/ProfileBar.dart';
import 'package:jobsque/presentation/reusable_components/profile/ProfileTextField.dart';
import 'package:sizer/sizer.dart';

class PersonalDetailsPage extends StatefulWidget {
  PersonalDetailsPage({super.key});
  double Height(double h) {
    return ((h / 812) * 100).h;
  }

  double Width(double w) {
    return ((w / 375) * 100).w;
  }

  final TextEditingController controller = TextEditingController();

  @override
  State<PersonalDetailsPage> createState() => _EditProfilePageState();
}

class _EditProfilePageState extends State<PersonalDetailsPage> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Sizer(
      builder: (context, orientation, deviceType) => Scaffold(
        // resizeToAvoidBottomInset: false,
        backgroundColor: Colors.white,
        body: GestureDetector(
          onTap: () => FocusScope.of(context).unfocus(),
          child: SingleChildScrollView(
            child: Column(
              children: [
                ProfileBar.noIcon(
                    BarTitle: 'Personal Details',
                    OnBackPressed: () {
                      Navigator.pop(context);
                    }),
                Padding(
                  padding: EdgeInsets.only(top: widget.Height(36)),
                  child: Stack(
                    alignment: Alignment.center,
                    children: [
                      ClipRRect(
                        borderRadius: BorderRadius.circular(100),
                        child: ColorFiltered(
                          colorFilter: ColorFilter.mode(
                              Color.fromARGB(102, 0, 0, 0), BlendMode.darken),
                          child: CircleAvatar(
                            radius: 45,
                            backgroundImage: AssetImage(
                              'assets/ProfilePic.png',
                            ),
                          ),
                        ),
                      ),
                      IconButton(
                          splashRadius: 20,
                          onPressed: () {},
                          icon: SvgPicture.asset('assets/icons/camera.svg')),
                    ],
                  ),
                ),
                IconButton(
                  padding: EdgeInsets.only(top: widget.Height(8)),
                  constraints: BoxConstraints(maxHeight: 40, minWidth: 105),
                  splashRadius: 30,
                  onPressed: () {},
                  icon: Container(
                    child: Text(
                      'Change Photo',
                      style: TextStyle(
                          fontFamily: 'SF Pro Display',
                          fontWeight: FontWeight.w500,
                          fontSize: 16,
                          color: Color.fromARGB(255, 51, 102, 255)),
                    ),
                  ),
                ),
                Align(
                  alignment: Alignment.centerLeft,
                  child: Padding(
                    padding: EdgeInsets.only(
                        left: widget.Width(24),
                        right: widget.Width(24),
                        top: widget.Height(25)),
                    child: Column(
                      mainAxisSize: MainAxisSize.max,
                      mainAxisAlignment: MainAxisAlignment.end,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          'Name',
                          style: TextStyle(
                              fontFamily: 'SF Pro Display',
                              fontWeight: FontWeight.w500,
                              fontSize: 16,
                              color: Color.fromARGB(255, 156, 163, 175)),
                        ),
                        ProfileTextField(),
                        Text(
                          'Bio',
                          style: TextStyle(
                              fontFamily: 'SF Pro Display',
                              fontWeight: FontWeight.w500,
                              fontSize: 16,
                              color: Color.fromARGB(255, 156, 163, 175)),
                        ),
                        ProfileTextField(),
                        Text(
                          'Address',
                          style: TextStyle(
                              fontFamily: 'SF Pro Display',
                              fontWeight: FontWeight.w500,
                              fontSize: 16,
                              color: Color.fromARGB(255, 156, 163, 175)),
                        ),
                        ProfileTextField(),
                        Text(
                          'No.Handphone',
                          style: TextStyle(
                              fontFamily: 'SF Pro Display',
                              fontWeight: FontWeight.w500,
                              fontSize: 16,
                              color: Color.fromARGB(255, 156, 163, 175)),
                        ),
                        Padding(
                            padding: EdgeInsets.only(top: widget.Height(8))),
                        CountryPickerField(),
                      ],
                    ),
                  ),
                ),
                // Spacer(),
                Padding(
                  padding: EdgeInsets.only(
                      bottom: widget.Height(20), top: widget.Height(103)),
                  child: Align(
                    alignment: Alignment.bottomCenter,
                    child: PrimaryButton(
                        buttonText: 'Submit', OnPrimaryButtonPressed: () {}),
                  ),
                )
              ],
            ),
          ),
        ),
      ),
    ));
  }
}
