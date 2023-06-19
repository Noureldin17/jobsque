import 'package:flutter/material.dart';
// import 'package:jobsque/constants/pages.dart' as pages;
import 'package:flutter_svg/flutter_svg.dart';
import 'package:sizer/sizer.dart';

class AccountAccessListItem extends StatefulWidget {
  const AccountAccessListItem(
      {super.key, required this.ItemText, required this.Route})
      : ItemLabel = '';
  const AccountAccessListItem.withLabel(
      {super.key,
      required this.ItemText,
      required this.ItemLabel,
      required this.Route});
  final String ItemText;
  final String ItemLabel;
  final String Route;

  double Height(double h) {
    return ((h / 812) * 100).h;
  }

  double Width(double w) {
    return ((w / 375) * 100).w;
  }

  @override
  State<AccountAccessListItem> createState() => _AccountAccessListItemState();
}

class _AccountAccessListItemState extends State<AccountAccessListItem> {
  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: (() {
        Navigator.pushNamed(context, widget.Route);
      }),
      child: Container(
          padding: EdgeInsetsDirectional.fromSTEB(
              widget.Width(24), widget.Height(14), widget.Width(24), 0),
          child: Column(
            mainAxisSize: MainAxisSize.max,
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Row(
                children: [
                  Text(
                    widget.ItemText,
                    style: TextStyle(
                        fontFamily: 'SF Pro Display',
                        fontWeight: FontWeight.w400,
                        fontSize: 16,
                        color: Color.fromARGB(255, 17, 24, 39)),
                  ),
                  Spacer(),
                  Text(
                    widget.ItemLabel,
                    style: TextStyle(
                        fontFamily: 'SF Pro Display',
                        fontWeight: FontWeight.w400,
                        fontSize: 14,
                        color: Color.fromARGB(255, 107, 114, 128)),
                  ),
                  IconButton(
                      padding: EdgeInsets.all(0),
                      splashRadius: 20,
                      constraints: BoxConstraints(maxHeight: 40, maxWidth: 40),
                      onPressed: () {},
                      icon: SvgPicture.asset(
                          'assets/icons/arrow-right-vector.svg'))
                ],
              ),
              Padding(
                padding: EdgeInsetsDirectional.only(top: widget.Height(14)),
                child: Align(
                  alignment: Alignment.topCenter,
                  child: Divider(
                    thickness: 1,
                  ),
                ),
              ),
            ],
          )),
    );
  }
}
