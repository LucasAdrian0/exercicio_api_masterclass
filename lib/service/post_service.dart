import 'package:dio/dio.dart';
import 'package:exercicio_api_masterclass/adapter/Post_adapter.dart';
import 'package:exercicio_api_masterclass/model/post_model.dart';
import 'package:exercicio_api_masterclass/service/abstract_service.dart';

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
}
