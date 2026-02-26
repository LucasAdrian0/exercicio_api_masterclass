class PostModel {
  final int id;
  final String date;
  final String slug;
  final String link;
  final RenderedField title;
  final RenderedField excerpt;
  final int featuredMedia;

  PostModel({
    required this.id,
    required this.date,
    required this.slug,
    required this.link,
    required this.title,
    required this.excerpt,
    required this.featuredMedia,
  });

}

class RenderedField {
  final String rendered;

  RenderedField({required this.rendered});

  
}