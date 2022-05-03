import 'package:flutter/cupertino.dart';
import 'package:library_web/app/common/resources/enums/page_status_enum.dart';
import 'package:library_web/app/feature/my_books/model/my_book_response.dart';

class MyBookProvider extends ChangeNotifier {
  final PageStatusEnum pageStatus = PageStatusEnum.loading;
  final List<MyBookResponse> myBooks = [];
}
