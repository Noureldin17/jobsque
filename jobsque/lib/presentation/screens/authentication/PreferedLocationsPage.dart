import 'package:flutter/material.dart';
import 'package:jobsque/presentation/reusable_components/countrySelection.dart';
import 'package:sizer/sizer.dart';
import 'package:jobsque/constants/countries.dart' as countries;
import '../../reusable_components/primaryButton.dart';
import 'package:jobsque/constants/pages.dart' as pages;

// ignore: must_be_immutable
class PreferedLocations extends StatefulWidget {
  PreferedLocations({super.key});

  double? Height(double h) {
    return ((h / 812) * 100).h;
  }

  double? Width(double w) {
    return ((w / 375) * 100).w;
  }

  bool remotework = true;
  bool workfromoffice = false;
  Color selectedFont = Colors.white;
  Color unselectedFont = Color.fromARGB(255, 107, 114, 128);
  BoxDecoration selectedDecoration = BoxDecoration(
      borderRadius: BorderRadius.circular(100),
      color: Color.fromARGB(255, 9, 26, 122));

  BoxDecoration unselectedDecoration = BoxDecoration(
      borderRadius: BorderRadius.circular(100),
      color: Color.fromARGB(255, 244, 244, 245));

  @override
  State<PreferedLocations> createState() => _PreferedLocationsState();
}

class _PreferedLocationsState extends State<PreferedLocations> {
  @override
  Widget build(BuildContext context) {
    return Sizer(
        builder: (context, orientation, deviceType) => Scaffold(
              backgroundColor: Colors.white,
              body: SafeArea(
                  child: Column(
                mainAxisSize: MainAxisSize.min,
                children: [
                  Padding(
                    padding: EdgeInsetsDirectional.fromSTEB(widget.Width(24)!,
                        widget.Height(30)!, widget.Width(24)!, 0),
                    child: Text(
                      "Where are your prefered Location?",
                      style: TextStyle(
                          fontFamily: 'SF Pro Display',
                          fontSize: 28,
                          fontWeight: FontWeight.w500),
                    ),
                  ),
                  Padding(
                    padding: EdgeInsetsDirectional.fromSTEB(widget.Width(24)!,
                        widget.Height(12)!, widget.Width(24)!, 0),
                    child: Text(
                        'Let us know, where is the work location you want at this time, so we can adjust it.',
                        style: TextStyle(
                            fontFamily: 'SF Pro Display',
                            fontSize: 16,
                            fontWeight: FontWeight.normal)),
                  ),
                  Padding(
                    padding: EdgeInsetsDirectional.fromSTEB(widget.Width(27)!,
                        widget.Height(35)!, widget.Width(27)!, 0),
                    child: Container(
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(100),
                          color: Color.fromARGB(255, 244, 244, 245)),
                      child: Row(
                        children: [
                          GestureDetector(
                              onTap: () {
                                if (widget.remotework) {
                                  setState(() {
                                    widget.remotework = false;
                                    widget.workfromoffice = true;
                                  });
                                }
                              },
                              child: Container(
                                  decoration: widget.workfromoffice
                                      ? widget.selectedDecoration
                                      : widget.unselectedDecoration,
                                  height: widget.Height(40),
                                  width: widget.Width(160.5),
                                  child: Center(
                                    child: Text('Work From Office',
                                        textAlign: TextAlign.center,
                                        style: TextStyle(
                                            color: widget.workfromoffice
                                                ? widget.selectedFont
                                                : widget.unselectedFont,
                                            fontFamily: 'SF Pro Display',
                                            fontSize: 14,
                                            fontWeight: FontWeight.w500)),
                                  ))),
                          GestureDetector(
                              onTap: () {
                                if (widget.workfromoffice) {
                                  setState(() {
                                    widget.workfromoffice = false;
                                    widget.remotework = true;
                                  });
                                }
                              },
                              child: Container(
                                  decoration: widget.remotework
                                      ? widget.selectedDecoration
                                      : widget.unselectedDecoration,
                                  width: widget.Width(160.5),
                                  height: widget.Height(40),
                                  child: Center(
                                    child: Text('Remote Work',
                                        textAlign: TextAlign.center,
                                        style: TextStyle(
                                            color: widget.remotework
                                                ? widget.selectedFont
                                                : widget.unselectedFont,
                                            fontFamily: 'SF Pro Display',
                                            fontSize: 14,
                                            fontWeight: FontWeight.w500)),
                                  )))
                        ],
                      ),
                    ),
                  ),
                  Padding(
                    padding: EdgeInsetsDirectional.fromSTEB(
                        widget.Width(24)!,
                        widget.Height(27)!,
                        widget.Width(24)!,
                        widget.Height(20)!),
                    child: Container(
                      alignment: Alignment.centerLeft,
                      child: Text(
                        'Select the country you want for your job',
                        style: TextStyle(
                            fontSize: 16,
                            fontFamily: 'SF Pro Display',
                            fontWeight: FontWeight.w400,
                            color: Color.fromARGB(255, 115, 115, 121)),
                      ),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsetsDirectional.fromSTEB(2, 0, 0, 0),
                    child: Wrap(
                      children: [
                        ...countries.list
                            .map((e) => CountryItem(
                                Country: e.countryName,
                                CountryAsset: e.countryAsset))
                            .toList()
                      ],
                    ),
                  ),
                  Padding(
                    padding: EdgeInsetsDirectional.fromSTEB(
                        0, widget.Height(63)!, 0, widget.Height(20)!),
                    child: PrimaryButton(
                        buttonText: "Next",
                        OnPrimaryButtonPressed: () {
                          Navigator.pushNamed(context, pages.accSuccessScreen);
                        }),
                  ),
                ],
              )),
            ));
  }
}
