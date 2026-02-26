import 'package:exercicio_api_masterclass/service/abstract_service.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:mocktail/mocktail.dart';
import 'package:exercicio_api_masterclass/model/post_model.dart';
import 'package:exercicio_api_masterclass/repository/post_repository_impl.dart';

class MockPostService extends Mock implements AbstractService {}

void main() {
  late PostRepositoryImpl repository;
  late MockPostService mockService;

  setUp(() {
    mockService = MockPostService();
    repository = PostRepositoryImpl(mockService);
  });

  test('Deve retornar lista de posts quando service for sucesso', () async {
    final fakePosts = [
      PostModel(
        id: 1,
        date: "2024-01-01",
        slug: "naruto",
        link: "https://teste.com",
        title: RenderedField(rendered: "Naruto"),
        excerpt: RenderedField(rendered: "Resumo do Naruto"),
        featuredMedia: 0,
      ),
    ];

    when(() => mockService.getListaAnimes(
          page: any(named: 'page'),
          perPage: any(named: 'perPage'),
        )).thenAnswer((_) async => fakePosts);

    final result = await repository.getPostRepository();

    expect(result, fakePosts);
    verify(() => mockService.getListaAnimes(
          page: 1,
          perPage: 10,
        )).called(1);
  });

  test('Deve lançar exception quando service falhar', () async {
    when(() => mockService.getListaAnimes(
          page: any(named: 'page'),
          perPage: any(named: 'perPage'),
        )).thenThrow(Exception("Erro"));

    expect(
      () => repository.getPostRepository(),
      throwsA(isA<Exception>()),
    );
  });
}