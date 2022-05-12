import 'package:library_web/app/common/data/get_book/get_book_repository.dart';
import 'package:library_web/app/common/data/get_book/get_book_repository_impl.dart';
import 'package:library_web/app/common/network_client/main_network_client.dart';
import 'package:library_web/app/common/router/app_state.dart';
import 'package:library_web/app/feature/book_detail/data/books_detail_repository.dart';
import 'package:library_web/app/feature/book_detail/data/books_detail_repository_impl.dart';
import 'package:library_web/app/feature/home_page/data/main_books_repository.dart';
import 'package:library_web/app/feature/home_page/data/main_books_repository_impl.dart';
import 'package:library_web/app/feature/home_page/state/MainController.dart';
import 'package:library_web/app/feature/my_books/data/my_books_repository.dart';
import 'package:library_web/app/feature/my_books/data/my_books_repository_impl.dart';

import 'd_i.dart';

injectDependency() async {
  DI.put(MainNetworkClient());
  DI.put(MainPageNotifier());
  DI.put(AppState());
  DI.put<GetBookRepository>(
    GetBookRepositoryImpl(mainNetworkClient: DI.find<MainNetworkClient>()),
  );
  DI.put<BookDetailRepository>(
    BookDetailRepositoryImpl(mainNetworkClient: DI.find<MainNetworkClient>()),
  );
  DI.put<MainBooksRepository>(
    MainBooksRepositoryImply(mainNetworkClient: DI.find<MainNetworkClient>()),
  );
  DI.put<MyBooksRepository>(
    MyBooksRepositoryImpl(mainNetworkClient: DI.find<MainNetworkClient>()),
  );
}
