import 'dart:io';

import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:image_picker/image_picker.dart';
import 'package:jobsque/presentation/reusable_components/ModalSheetButton.dart';
import 'package:jobsque/presentation/reusable_components/PrimaryButton.dart';
import 'package:jobsque/presentation/reusable_components/job_application/CountryPickerFormField.dart';
import 'package:jobsque/presentation/reusable_components/profile/ProfileBar.dart';
import 'package:jobsque/presentation/reusable_components/profile/ProfileTextField.dart';
import 'package:sizer/sizer.dart';
// import 'package:xfile/xfile.dart';

class EditProfilePage extends StatefulWidget {
  EditProfilePage({super.key});
  double Height(double h) {
    return ((h / 812) * 100).h;
  }

  double Width(double w) {
    return ((w / 375) * 100).w;
  }

  final TextEditingController controller = TextEditingController();

  @override
  State<EditProfilePage> createState() => _EditProfilePageState();
}

class _EditProfilePageState extends State<EditProfilePage> {
  XFile? ImageFile;
  Future ImagePickerGallery() async {
    final UploadedFile =
        await ImagePicker().pickImage(source: ImageSource.gallery);
    if (UploadedFile == null) return;
    setState(() {
      ImageFile = UploadedFile;
    });
  }

  Future ImagePickerCamera() async {
    final UploadedFile =
        await ImagePicker().pickImage(source: ImageSource.camera);
    if (UploadedFile == null) return;
    setState(() {
      ImageFile = UploadedFile;
    });
  }

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
                    BarTitle: 'Edit Profile',
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
                            backgroundImage: ImageFile == null
                                ? AssetImage(
                                    'assets/ProfilePic.png',
                                  )
                                : AssetImage(ImageFile!.path),
                          ),
                        ),
                      ),
                      IconButton(
                          splashRadius: 20,
                          onPressed: () {
                            showModalBottomSheet(
                              shape: RoundedRectangleBorder(
                                  borderRadius: BorderRadius.only(
                                      topLeft: Radius.circular(22),
                                      topRight: Radius.circular(22))),
                              context: context,
                              builder: (context) {
                                return Container(
                                  padding: EdgeInsets.only(top: 40, bottom: 40),
                                  height: 200,
                                  width: 100.w,
                                  decoration: BoxDecoration(
                                      borderRadius: BorderRadius.only(
                                          topLeft: Radius.circular(22),
                                          topRight: Radius.circular(22)),
                                      color: Colors.white),
                                  child: Column(
                                    mainAxisAlignment:
                                        MainAxisAlignment.spaceBetween,
                                    children: [
                                      ModalSheetButton(
                                          Text: 'Take A Photo',
                                          iconAsset: 'assets/icons/camera.svg',
                                          OnPressed: ImagePickerCamera),
                                      ModalSheetButton(
                                          Text: 'Choose From Gallery',
                                          iconAsset: 'assets/icons/gallery.svg',
                                          OnPressed: ImagePickerGallery),
                                    ],
                                  ),
                                );
                              },
                            );
                          },
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
