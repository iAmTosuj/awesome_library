import 'package:freezed_annotation/freezed_annotation.dart';

part 'book_model.freezed.dart';

@Freezed()
class BookListModel with _$BookListModel {
  factory BookListModel.bookModel({
    required String name,
    required String path,
    required String author,
    required String category,
  }) = BookModel;

  factory BookListModel.bookCategory({
    required String name,
  }) = BookCategory;
}
