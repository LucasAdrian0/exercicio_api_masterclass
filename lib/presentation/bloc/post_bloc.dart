import 'package:flutter_bloc/flutter_bloc.dart';

import '../../domain/entities/post.dart';
import '../../domain/repositories/abstract_repository.dart';
import 'post_event.dart';
import 'post_state.dart';

class PostBloc extends Bloc<PostEvent, PostState> {
  final AbsPostRepository repository;

  //lista acumulada
  final List<Post> _allPosts = [];

  PostBloc(this.repository) : super(PostInitial()) {
    on<BuscarPosts>(_onFetchPosts);
  }

  Future<void> _onFetchPosts(BuscarPosts event, Emitter<PostState> emit) async {
    try {
      //só mostra loading na primeira página
      if (event.page == 1) {
        _allPosts.clear();
        emit(PostLoading());
      }

      final posts = await repository.getPostRepository(page: event.page);

      _allPosts.addAll(posts);

      emit(PostSuccess(List.from(_allPosts)));
    } catch (e) {
      emit(PostFailure("Erro ao carregar posts"));
    }
  }
}
