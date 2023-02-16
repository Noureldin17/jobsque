import 'package:flutter/material.dart';
// import 'package:jobsque/constants/pages.dart' as pages;
import 'package:flutter_svg/flutter_svg.dart';
import 'package:jobsque/presentation/reusable_components/messages/EmptyMesssgesView.dart';
import 'package:jobsque/presentation/reusable_components/messages/MessagesFilterModal.dart';
import 'package:jobsque/presentation/reusable_components/messages/MessagesListItem.dart';
import 'package:jobsque/presentation/reusable_components/search/AppSearchBar.dart';
import 'package:sizer/sizer.dart';

// ignore: must_be_immutable
class MessagesPage extends StatefulWidget {
  MessagesPage({super.key}) : isEmpty = false;
  double Height(double h) {
    return ((h / 756) * 100).h;
  }

  double Width(double w) {
    return ((w / 375) * 100).w;
  }

  bool isEmpty;
  @override
  State<MessagesPage> createState() => _HomePageState();
}

class _HomePageState extends State<MessagesPage> {
  @override
  Widget build(BuildContext context) {
    return Sizer(
        builder: (context, orientation, deviceType) => SafeArea(
                child: Scaffold(
              backgroundColor: Colors.white,
              body: Padding(
                padding: EdgeInsets.only(
                    left: widget.Width(0), right: widget.Width(0)),
                child: Column(children: [
                  Padding(
                    padding: EdgeInsets.only(
                        left: widget.Width(24),
                        top: widget.Height(31),
                        right: widget.Width(24),
                        bottom: widget.Height(20)),
                    child: Row(
                      children: [
                        IconButton(
                            padding: EdgeInsets.all(0),
                            splashRadius: 20,
                            constraints:
                                BoxConstraints(maxHeight: 40, maxWidth: 40),
                            onPressed: () {},
                            icon: SvgPicture.asset(
                                'assets/icons/arrow-left.svg')),
                        Padding(
                            padding: EdgeInsets.only(left: widget.Width(95))),
                        Text('Messages',
                            style: TextStyle(
                                fontSize: 20,
                                fontWeight: FontWeight.w500,
                                fontFamily: 'SF Pro Display',
                                color: Color.fromARGB(255, 17, 24, 39)))
                      ],
                    ),
                  ),
                  Padding(
                    padding: EdgeInsets.only(
                        left: widget.Width(24),
                        top: widget.Height(0),
                        right: widget.Width(24),
                        bottom: widget.Height(0)),
                    child: Row(
                      children: [
                        Expanded(child: AppSearchBar(hasIcon: false)),
                        Padding(
                          padding: EdgeInsetsDirectional.fromSTEB(15, 0, 0, 0),
                          child: Container(
                            width: widget.Width(48),
                            height: widget.Height(48),
                            decoration: BoxDecoration(
                              color: Color(0xFFAFAFA),
                              shape: BoxShape.circle,
                              border: Border.all(
                                  color: Color.fromARGB(255, 209, 213, 219)),
                            ),
                            child: IconButton(
                              onPressed: () {
                                showModalBottomSheet(
                                    shape: RoundedRectangleBorder(
                                        borderRadius: BorderRadius.only(
                                            topLeft: Radius.circular(30),
                                            topRight: Radius.circular(30))),
                                    isScrollControlled: true,
                                    context: context,
                                    builder: (context) {
                                      return MessagesFilterModal();
                                    });
                              },
                              icon: SvgPicture.asset(
                                'assets/icons/setting-4.svg',
                                fit: BoxFit.scaleDown,
                              ),
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                  widget.isEmpty
                      ? EmptyMessagesView()
                      : Expanded(
                          child: ListView.builder(
                          itemCount: 14,
                          itemBuilder: (context, index) {
                            return MessagesListItem();
                          },
                        ))
                ]),
              ),
            )));
  }
}
