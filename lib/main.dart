import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import 'presentation/bloc/post_bloc.dart';
import 'presentation/pages/api_page.dart';
import 'data/service/post_service.dart';
import 'data/repository/post_repository_impl.dart';
import 'data/service/dioclient.dart';

void main() {
  // Cria o Dio usando seu Dioclient
  final dio = Dioclient.create();

  final postService = PostService(dio);

  final postRepository = PostRepositoryImpl(postService);

  runApp(MyApp(postRepository: postRepository));
}

class MyApp extends StatelessWidget {
  final PostRepositoryImpl postRepository;

  const MyApp({super.key, required this.postRepository});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: BlocProvider(
        create: (context) => PostBloc(postRepository),
        child: const APIPage(),
      ),
    );
  }
}