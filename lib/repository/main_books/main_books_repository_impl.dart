import 'package:library_web/core/network_client/main_network_client.dart';
import 'package:library_web/repository/main_books/main_books_repository.dart';
import 'package:library_web/repository/main_books/model/main_books_response.dart';

class MainBooksRepositoryImply implements MainBooksRepository {
  final MainNetworkClient _mainNetworkClient;
  static const path = '/api/bookstore/books';

  const MainBooksRepositoryImply({
    required MainNetworkClient mainNetworkClient,
  }) : _mainNetworkClient = mainNetworkClient;

  @override
  Future<List<MainBooksResponse>> getBooks() async {
    try {
      final response = await _mainNetworkClient.client.get(path);
      return response.data
          .map<MainBooksResponse>((e) => MainBooksResponse.fromJson(e))
          .toList();
    } catch (e, stack) {
      rethrow;
    }
  }
}
