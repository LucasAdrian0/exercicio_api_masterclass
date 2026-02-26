import 'package:exercicio_api_masterclass/model/post_model.dart';
import 'package:exercicio_api_masterclass/repository/abstract_repository.dart';
import 'package:exercicio_api_masterclass/service/abstract_service.dart';

class PostRepositoryImpl implements AbsPostRepository {
  final AbstractService service;

  PostRepositoryImpl(this.service);

  @override
  Future<List<PostModel>> getPostRepository({
    int page = 1,
    int perPage = 10,
  }) async {
    try {
      return await service.getListaAnimes(page: page, perPage: perPage);
    } catch (e) {
      throw Exception("Erro na repository: $e");
    }
  }
}
