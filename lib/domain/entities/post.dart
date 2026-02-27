class Post {
  final int id;
  final String date;
  final String slug;
  final String link;
  final String title;
  final String excerpt;
  final int featuredMedia;
  final String? imageUrl;

  Post({
    required this.id,
    required this.date,
    required this.slug,
    required this.link,
    required this.title,
    required this.excerpt,
    required this.featuredMedia,
    this.imageUrl,
  });
}
