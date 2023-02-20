import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:jobsque/data/models/job_listing_model.dart';
import 'package:meta/meta.dart';
import '../../constants/Jobs.dart' as jobs;
part 'job_listings_state.dart';

class JobListingsCubit extends Cubit<JobListingsState> {
  JobListingsCubit() : super(JobListingsInitial());

  static JobListingsCubit get(context) =>
      BlocProvider.of<JobListingsCubit>(context);

  List<JobListing> JobsList = jobs.listings;
  List<JobListing> SavedList = [];
  List<JobListing> AppliedList = [];

  void saveJob(JobListing listing) {
    print("ITEM SAVED !!!!");
    var i = JobsList.indexOf(listing);
    JobsList[i].isSaved = true;
    SavedList.add(listing);
    emit(JobListingSaved());
  }

  void unsaveJob(JobListing listing) {
    print("ITEM UNSAVED !!!!");
    var i = JobsList.indexOf(listing);
    JobsList[i].isSaved = false;
    SavedList.remove(listing);
    emit(JobListingSaved());
  }

  void applyJob(JobListing listing) {
    var i = JobsList.indexOf(listing);
    JobsList[i].isApplied = true;
    if (!AppliedList.contains(listing)) AppliedList.add(listing);
    emit(JobListingApplied());
  }
}
