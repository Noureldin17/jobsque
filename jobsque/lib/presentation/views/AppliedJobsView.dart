import 'package:flutter/cupertino.dart';
import 'package:jobsque/presentation/reusable_components/ListDivider.dart';
import 'package:jobsque/presentation/reusable_components/applied/AppliedJobsItem.dart';

class AppliedJobsView extends StatefulWidget {
  const AppliedJobsView({super.key});

  @override
  State<AppliedJobsView> createState() => _AppliedJobsViewState();
}

class _AppliedJobsViewState extends State<AppliedJobsView> {
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        ListDivider.left(divText: '12 Jobs'),
        Expanded(
          child: ListView.builder(
            itemCount: 3,
            itemBuilder: (context, index) {
              return AppliedJobsItem();
            },
          ),
        )
      ],
    );
  }
}
