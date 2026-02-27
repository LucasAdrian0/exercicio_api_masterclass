import 'package:dio/dio.dart';
import 'package:exercicio_api_masterclass/data/adapter/Post_adapter.dart';
import 'package:exercicio_api_masterclass/data/model/post_model.dart';
import 'package:exercicio_api_masterclass/data/service/abstract_service.dart';

class PostService implements AbstractService {
  final Dio dio;

  PostService(this.dio);

  @override
  Future<List<PostModel>> getListaAnimes({
    int page = 1,
    int perPage = 10,
  }) async {
    try {
      final response = await dio.get(
        "/wp/v2/posts",
        queryParameters: {"page": page, "per_page": perPage},
      );
      return (response.data as List)
          .map((json) => PostAdapter.fromJson(json))
          .toList();
    } on DioException catch (e) {
      throw Exception(
        "Erro ao listar : (${e.response?.statusCode}) : ${e.message}",
      );
    }
  }

  @override
  Future<String?> getMediaUrl(int id) async {
    try {
      final response = await dio.get('/wp/v2/media/$id');
      final mediaDetails = response.data['media_details'];
      if (mediaDetails != null &&
          mediaDetails['sizes'] != null &&
          mediaDetails['sizes']['medium'] != null) {
        return mediaDetails['sizes']['medium']['source_url'];
      }
      return response.data['source_url'];
    } catch (e) {
      return null;
    }
  }
}
