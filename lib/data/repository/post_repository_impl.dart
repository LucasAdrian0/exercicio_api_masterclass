import 'package:exercicio_api_masterclass/domain/entities/post.dart';
import 'package:exercicio_api_masterclass/domain/repositories/abstract_repository.dart';
import 'package:exercicio_api_masterclass/data/service/abstract_service.dart';

class PostRepositoryImpl implements AbsPostRepository {
  final AbstractService service;

  PostRepositoryImpl(this.service);

  @override
  Future<List<Post>> getPostRepository({int page = 1, int perPage = 10}) async {
    try {
      final models = await service.getListaAnimes(page: page, perPage: perPage);

      // Fetch image URLs
      List<Future<String?>> futures = models.map((model) {
        if (model.featuredMedia != 0) {
          return service.getMediaUrl(model.featuredMedia);
        } else {
          return Future.value(null);
        }
      }).toList();

      List<String?> imageUrls = await Future.wait(futures);

      //Aqui acontece a conversão Model - Entity
      return models.asMap().entries.map((entry) {
        int index = entry.key;
        var model = entry.value;
        return Post(
          id: model.id,
          date: model.date,
          slug: model.slug,
          link: model.link,
          title: model.title.rendered,
          excerpt: model.excerpt.rendered,
          featuredMedia: model.featuredMedia,
          imageUrl: imageUrls[index],
        );
      }).toList();
    } catch (e) {
      throw Exception("Erro na repository: $e");
    }
  }
}
