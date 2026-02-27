//disparar evento
abstract class PostEvent {}

class BuscarPosts extends PostEvent {
  final int page;

  BuscarPosts({this.page = 1});
}
