import 'package:library_web/app/common/network_client/main_network_client.dart';
import 'package:library_web/app/feature/home_page/data/main_books_repository.dart';
import 'package:library_web/app/feature/home_page/model/main_books_response.dart';
import 'package:library_web/app/feature/home_page/model/main_books_section.dart';

class MainBooksRepositoryImply implements MainBooksRepository {
  final MainNetworkClient _mainNetworkClient;
  static const path = '/api/library/books/';

  const MainBooksRepositoryImply({
    required MainNetworkClient mainNetworkClient,
  }) : _mainNetworkClient = mainNetworkClient;

  @override
  Future<List<MainBooksResponse>> fetchBooks(String query) async {
    try {
      final response = await _mainNetworkClient.client
          .get(path, queryParameters: {'section': query});
      return response.data
          .map<MainBooksResponse>((e) => MainBooksResponse.fromJson(e))
          .toList();
    } catch (e, stack) {
      rethrow;
    }
  }

  @override
  Future<void> getBook(int id) async {
    try {
      await _mainNetworkClient.client.post('$path$id/');
    } catch (e, stack) {
      rethrow;
    }
  }

  @override
  Future<List<MainBooksSection>> getSections() async {
    try {
      final response =
          await _mainNetworkClient.client.get('/api/library/sections/');

      return response.data.map((e) => MainBooksSection.fromJson(e));
    } catch (e, stack) {
      rethrow;
    }
  }
}
