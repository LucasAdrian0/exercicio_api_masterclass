//estados de posts 
import '../../domain/entities/post.dart';

abstract class PostState {}

class PostInitial extends PostState {}

class PostLoading extends PostState {}

class PostSuccess extends PostState {
  final List<Post> posts;

  PostSuccess(this.posts);
}

class PostFailure extends PostState {
  final String message;

  PostFailure(this.message);
}