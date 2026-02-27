import 'package:exercicio_api_masterclass/data/model/post_model.dart';

abstract class AbstractService {
  Future<List<PostModel>> getListaAnimes({int page = 1, int perPage = 10});
  Future<String?> getMediaUrl(int id);
}
