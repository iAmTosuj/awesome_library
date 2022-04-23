import 'package:freezed_annotation/freezed_annotation.dart';

part 'book_detail_model.freezed.dart';

@Freezed()
class BookDetailModel with _$BookDetailModel {
  factory BookDetailModel({
    required String url,
    required String name,
    required String author,
    required String category,
  }) = _BookDetailModel;
}
