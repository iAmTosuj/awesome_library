import 'package:library_web/app/common/network_client/main_network_client.dart';
import 'package:library_web/app/feature/my_books/data/my_books_repository.dart';
import 'package:library_web/app/feature/my_books/model/my_book_response.dart';

class MyBooksRepositoryImpl extends MyBooksRepository {
  final MainNetworkClient _mainNetworkClient;
  static const _path = '';

  MyBooksRepositoryImpl({
    required MainNetworkClient mainNetworkClient,
  }) : _mainNetworkClient = mainNetworkClient;

  @override
  Future<List<MyBookResponse>> fetchBooks() async {
    final response = await _mainNetworkClient.client.get(_path);

    return response.data.map((e) => MyBookResponse.fromJson(e));
  }
}
