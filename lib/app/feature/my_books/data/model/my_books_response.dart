import 'package:json_annotation/json_annotation.dart';

part 'my_books_response.g.dart';

@JsonSerializable()
class MyBooksResponse {
  MyBooksResponse();

  factory MyBooksResponse.fromJson(Map<String, dynamic> json) =>
      _$MyBooksResponseFromJson(json);
}
