// import '../../constants/Jobs.dart' as jobs;
part of 'job_listings_cubit.dart';

@immutable
abstract class JobListingsState {}

class JobListingsInitial extends JobListingsState {}

class JobListingSaved extends JobListingsState {}

class JobListingApplied extends JobListingsState {}
