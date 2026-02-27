import 'package:exercicio_api_masterclass/domain/entities/post.dart';

abstract class AbsPostRepository {
  Future<List<Post>> getPostRepository({int page = 1, int perPage = 10});
}
