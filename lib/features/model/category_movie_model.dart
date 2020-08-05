class CategoryMovie {
  final String name;
  final String imageUrl;
  final String videoUrl;
  final String year;
  final String kind;
  final String description;
  final String duration;
  final String coutry;

  CategoryMovie(
      {this.videoUrl,
      this.coutry = "Sudan",
      this.name,
      this.imageUrl,
      this.year = "3030",
      this.kind = "Action",
      this.description = "adfjkldfjdklf",
      this.duration = "20:40"});
}
