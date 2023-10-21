class News {
  News({
    required this.id,
    required this.title,
    required this.imgUrl,
    required this.by,
    required this.readTime,
    required this.postedOn,
    required this.category,
    required this.category1,
    required this.category2,
    required this.description,
    this.isSaved = false,
  });

  final String title;
  final String imgUrl;
  final String by;
  final int readTime;
  final String postedOn;
  final String category;
  final String category1;
  final String category2;
  final String description;
  final int id;
  bool isSaved;
}
