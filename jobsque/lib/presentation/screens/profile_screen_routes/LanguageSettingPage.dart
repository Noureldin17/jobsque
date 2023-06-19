import 'package:flutter/material.dart';
import 'package:jobsque/data/models/languages_model.dart';
import 'package:jobsque/presentation/reusable_components/profile/LanguageSelectionItem.dart';
import 'package:jobsque/presentation/reusable_components/profile/ProfileBar.dart';
import 'package:sizer/sizer.dart';
import '../../../constants/language_list.dart' as languages;

// ignore: must_be_immutable
class LanguageSetting extends StatefulWidget {
  LanguageSetting({super.key}) : list = languages.languages;

  double Height(double h) {
    return ((h / 756) * 100).h;
  }

  double Width(double w) {
    return ((w / 375) * 100).w;
  }

  String GroupValue = 'English';
  final List<Language> list;
  @override
  State<LanguageSetting> createState() => _LanguageSettingState();
}

class _LanguageSettingState extends State<LanguageSetting> {
  void OnSelectionChanged(String s) {
    setState(() {
      widget.GroupValue = s;
    });
  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Sizer(
      builder: (context, orientation, deviceType) => Scaffold(
        backgroundColor: Colors.white,
        body: Column(
          children: [
            ProfileBar.noIcon(
                BarTitle: 'Language',
                OnBackPressed: () {
                  Navigator.pop(context);
                }),
            Padding(padding: EdgeInsets.only(top: widget.Height(28))),
            Expanded(
                child: ListView.builder(
              itemCount: languages.languages.length,
              itemBuilder: (context, index) {
                return LanguageSelection(
                    LanguageFlag: widget.list[index].flagAsset,
                    Language: widget.list[index].language,
                    GroupValue: widget.GroupValue,
                    value: widget.list[index].language,
                    OnSelectionChanged: OnSelectionChanged);
              },
            ))
          ],
        ),
      ),
    ));
  }
}
