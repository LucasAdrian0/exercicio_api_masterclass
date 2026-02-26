// ignore_for_file: file_names

import 'package:exercicio_api_masterclass/data/model/post_model.dart';

class PostAdapter {

static PostModel fromJson(Map<String, dynamic> json) {
    return PostModel(
      id: json['id'] ?? 0,
      date: json['date'] ?? '',
      slug: json['slug'] ?? '',
      link: json['link'] ?? '',
      title: RenderedField(
        rendered: json['title']?['rendered'] ?? ''),
      excerpt: RenderedField(rendered: json['excerpt'] ?? ''),
      featuredMedia: json['featured_media'] ?? 0,
    );
  }

  static List<PostModel> listFromJson(List<dynamic> jsonList) {
    return jsonList.map((json) => fromJson(json)).toList();
  }

}
