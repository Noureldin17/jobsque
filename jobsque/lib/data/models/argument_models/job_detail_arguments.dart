import 'package:jobsque/data/models/job_listing_model.dart';

class JobDetailArguments {
  final JobListing listing;
  final Function OnSave;

  const JobDetailArguments({required this.OnSave, required this.listing});
}
