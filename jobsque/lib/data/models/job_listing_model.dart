class JobListing {
  int id;
  String imageAsset;
  String title;
  String level;
  String type;
  String workplace;
  String company;
  String location;
  int monthlySalary;
  bool isSaved;
  bool isApplied;
  int applicationStep;

  JobListing(
      {required this.id,
      required this.imageAsset,
      required this.applicationStep,
      required this.company,
      required this.level,
      required this.location,
      required this.monthlySalary,
      required this.title,
      required this.type,
      required this.isApplied,
      required this.workplace,
      required this.isSaved});
}
