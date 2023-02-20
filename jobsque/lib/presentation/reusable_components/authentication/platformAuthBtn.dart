import 'package:flutter/material.dart';

// import 'package:jobsque/constants/pages.dart' as pages;
// import 'package:jobsque/presentation/screens/CreateAccPage.dart';

class platformButton extends StatelessWidget {
  final Image? icon;
  final String? name;

  const platformButton({super.key, this.icon, this.name});

  @override
  Widget build(BuildContext context) {
    return Container(
        child: OutlinedButton.icon(
      onPressed: () => {
        print("Button was pressed..."),
        // Navigator.pushNamed(context, pages.creatAccPage)
      },
      icon: icon!,
      label: Text(name!),
      style: OutlinedButton.styleFrom(
        minimumSize: Size(157, 46),
        foregroundColor: Color.fromARGB(255, 54, 63, 94),
        textStyle: TextStyle(
          fontFamily: 'SF Pro Display',
          fontWeight: FontWeight.w500,
        ),
        side: BorderSide(
          color: Color(0xFFD1D5DB),
          width: 1,
        ),
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(8),
        ),
      ),
    ));
  }
}
