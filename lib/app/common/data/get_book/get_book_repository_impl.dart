import 'package:library_web/app/common/data/get_book/get_book_repository.dart';
import 'package:library_web/app/common/network_client/main_network_client.dart';

class GetBookRepositoryImpl implements GetBookRepository {
  final MainNetworkClient _mainNetworkClient;
  static const _path = '';

  const GetBookRepositoryImpl({
    required MainNetworkClient mainNetworkClient,
  }) : _mainNetworkClient = mainNetworkClient;

  @override
  Future<void> getBook(int id) async {
    try {
      await _mainNetworkClient.client.post(_path);
    } catch (_) {
      rethrow;
    }
  }
}
