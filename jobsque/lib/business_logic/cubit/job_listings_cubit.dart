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

  void saveJob(int id) {
    JobsList[id - 1].isSaved = true;
    SavedList.add(JobsList[id - 1]);
    emit(JobListingSaved());
  }

  void unsaveJob(int id) {
    JobsList[id - 1].isSaved = false;
    SavedList.remove(JobsList[id - 1]);
    emit(JobListingSaved());
  }
}
