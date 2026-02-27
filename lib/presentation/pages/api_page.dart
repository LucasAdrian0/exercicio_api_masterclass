import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:html/parser.dart' show parse;
import '../bloc/post_bloc.dart';
import '../bloc/post_event.dart';
import '../bloc/post_state.dart';

class APIPage extends StatefulWidget {
  const APIPage({super.key});

  @override
  State<APIPage> createState() => _APIPageState();
}

class _APIPageState extends State<APIPage> {
  final ScrollController _scrollController = ScrollController();
  int _paginaAtual = 1;
  bool _carregarMais = false;

  @override
  void initState() {
    super.initState();

    //Primeira chamada
    context.read<PostBloc>().add(BuscarPosts(page: _paginaAtual));

    _scrollController.addListener(_onScroll);
  }

  void _onScroll() {
    if (_scrollController.position.pixels >=
            _scrollController.position.maxScrollExtent - 200 &&
        !_carregarMais) {
      setState(() {
        _carregarMais = true;
      });
      _paginaAtual++;

      context.read<PostBloc>().add(BuscarPosts(page: _paginaAtual));
    }
  }

  @override
  void dispose() {
    _scrollController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text("Posts")),
      body: BlocBuilder<PostBloc, PostState>(
        builder: (context, state) {
          if (state is PostLoading && _paginaAtual == 1) {
            return const Center(child: CircularProgressIndicator());
          }

          if (state is PostFailure) {
            _carregarMais = false;
            return Center(child: Text(state.message));
          }

          if (state is PostSuccess) {
            final isLoadingMore = _carregarMais;
            _carregarMais = false;

            return ListView.builder(
              controller: _scrollController,
              itemCount: state.posts.length + (isLoadingMore ? 1 : 0),
              itemBuilder: (context, index) {
                if (index == state.posts.length) {
                  return const Center(child: CircularProgressIndicator());
                }
                final post = state.posts[index];

                return Card(
                  margin: const EdgeInsets.symmetric(
                    horizontal: 8,
                    vertical: 4,
                  ),
                  child: Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Row(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        post.imageUrl != null
                            ? Image.network(
                                post.imageUrl!,
                                width: 100,
                                height: 80,
                                fit: BoxFit.cover,
                                errorBuilder: (context, error, stackTrace) =>
                                    const Icon(Icons.image_not_supported),
                              )
                            : const Icon(Icons.image, size: 50),
                        const SizedBox(width: 8),
                        Expanded(
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text(
                                parse(post.title).body?.text ?? '',
                                style: Theme.of(context).textTheme.titleMedium,
                              ),
                              const SizedBox(height: 4),
                              Text(
                                parse(post.excerpt).body?.text ?? '',
                                style: Theme.of(context).textTheme.bodyMedium,
                              ),
                            ],
                          ),
                        ),
                      ],
                    ),
                  ),
                );
              },
            );
          }

          return const SizedBox();
        },
      ),
    );
  }
}
