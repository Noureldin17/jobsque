import 'package:flutter/cupertino.dart';
import 'package:jobsque/data/models/job_listing_model.dart';
import 'package:jobsque/presentation/reusable_components/ListDivider.dart';
import 'package:jobsque/presentation/reusable_components/applied/AppliedJobsItem.dart';

class AppliedJobsView extends StatefulWidget {
  const AppliedJobsView({super.key, required this.list});
  final List<JobListing> list;
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
            itemCount: widget.list.length,
            itemBuilder: (context, index) {
              return AppliedJobsItem(
                listing: widget.list[index],
              );
            },
          ),
        )
      ],
    );
  }
}
