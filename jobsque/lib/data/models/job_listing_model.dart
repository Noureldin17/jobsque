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

  JobListing(
      {required this.id,
      required this.imageAsset,
      required this.company,
      required this.level,
      required this.location,
      required this.monthlySalary,
      required this.title,
      required this.type,
      required this.workplace,
      required this.isSaved});
}
