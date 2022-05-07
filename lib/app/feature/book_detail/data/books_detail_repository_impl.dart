import 'package:library_web/app/common/network_client/main_network_client.dart';
import 'package:library_web/app/feature/book_detail/data/books_detail_repository.dart';
import 'package:library_web/app/feature/book_detail/model/book_detail_response.dart';

class BookDetailRepositoryImpl implements BookDetailRepository {
  final MainNetworkClient _mainNetworkClient;
  static const path = '/api/library/books';

  const BookDetailRepositoryImpl({
    required MainNetworkClient mainNetworkClient,
  }) : _mainNetworkClient = mainNetworkClient;

  @override
  Future<BookDetailResponse> getBook(int id) async {
    try {
      final response = await _mainNetworkClient.client.get('$path/$id/');

      return BookDetailResponse.fromJson(response.data);
    } catch (_) {
      rethrow;
    }
  }
}
