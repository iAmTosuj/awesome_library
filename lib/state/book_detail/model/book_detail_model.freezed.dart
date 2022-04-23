// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'book_detail_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$BookDetailModel {
  String get url => throw _privateConstructorUsedError;
  String get name => throw _privateConstructorUsedError;
  String get author => throw _privateConstructorUsedError;
  String get category => throw _privateConstructorUsedError;
  int get id => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $BookDetailModelCopyWith<BookDetailModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $BookDetailModelCopyWith<$Res> {
  factory $BookDetailModelCopyWith(
          BookDetailModel value, $Res Function(BookDetailModel) then) =
      _$BookDetailModelCopyWithImpl<$Res>;
  $Res call({String url, String name, String author, String category, int id});
}

/// @nodoc
class _$BookDetailModelCopyWithImpl<$Res>
    implements $BookDetailModelCopyWith<$Res> {
  _$BookDetailModelCopyWithImpl(this._value, this._then);

  final BookDetailModel _value;
  // ignore: unused_field
  final $Res Function(BookDetailModel) _then;

  @override
  $Res call({
    Object? url = freezed,
    Object? name = freezed,
    Object? author = freezed,
    Object? category = freezed,
    Object? id = freezed,
  }) {
    return _then(_value.copyWith(
      url: url == freezed
          ? _value.url
          : url // ignore: cast_nullable_to_non_nullable
              as String,
      name: name == freezed
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      author: author == freezed
          ? _value.author
          : author // ignore: cast_nullable_to_non_nullable
              as String,
      category: category == freezed
          ? _value.category
          : category // ignore: cast_nullable_to_non_nullable
              as String,
      id: id == freezed
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }
}

/// @nodoc
abstract class _$BookDetailModelCopyWith<$Res>
    implements $BookDetailModelCopyWith<$Res> {
  factory _$BookDetailModelCopyWith(
          _BookDetailModel value, $Res Function(_BookDetailModel) then) =
      __$BookDetailModelCopyWithImpl<$Res>;
  @override
  $Res call({String url, String name, String author, String category, int id});
}

/// @nodoc
class __$BookDetailModelCopyWithImpl<$Res>
    extends _$BookDetailModelCopyWithImpl<$Res>
    implements _$BookDetailModelCopyWith<$Res> {
  __$BookDetailModelCopyWithImpl(
      _BookDetailModel _value, $Res Function(_BookDetailModel) _then)
      : super(_value, (v) => _then(v as _BookDetailModel));

  @override
  _BookDetailModel get _value => super._value as _BookDetailModel;

  @override
  $Res call({
    Object? url = freezed,
    Object? name = freezed,
    Object? author = freezed,
    Object? category = freezed,
    Object? id = freezed,
  }) {
    return _then(_BookDetailModel(
      url: url == freezed
          ? _value.url
          : url // ignore: cast_nullable_to_non_nullable
              as String,
      name: name == freezed
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      author: author == freezed
          ? _value.author
          : author // ignore: cast_nullable_to_non_nullable
              as String,
      category: category == freezed
          ? _value.category
          : category // ignore: cast_nullable_to_non_nullable
              as String,
      id: id == freezed
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }
}

/// @nodoc

class _$_BookDetailModel implements _BookDetailModel {
  _$_BookDetailModel(
      {required this.url,
      required this.name,
      required this.author,
      required this.category,
      required this.id});

  @override
  final String url;
  @override
  final String name;
  @override
  final String author;
  @override
  final String category;
  @override
  final int id;

  @override
  String toString() {
    return 'BookDetailModel(url: $url, name: $name, author: $author, category: $category, id: $id)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _BookDetailModel &&
            const DeepCollectionEquality().equals(other.url, url) &&
            const DeepCollectionEquality().equals(other.name, name) &&
            const DeepCollectionEquality().equals(other.author, author) &&
            const DeepCollectionEquality().equals(other.category, category) &&
            const DeepCollectionEquality().equals(other.id, id));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(url),
      const DeepCollectionEquality().hash(name),
      const DeepCollectionEquality().hash(author),
      const DeepCollectionEquality().hash(category),
      const DeepCollectionEquality().hash(id));

  @JsonKey(ignore: true)
  @override
  _$BookDetailModelCopyWith<_BookDetailModel> get copyWith =>
      __$BookDetailModelCopyWithImpl<_BookDetailModel>(this, _$identity);
}

abstract class _BookDetailModel implements BookDetailModel {
  factory _BookDetailModel(
      {required final String url,
      required final String name,
      required final String author,
      required final String category,
      required final int id}) = _$_BookDetailModel;

  @override
  String get url => throw _privateConstructorUsedError;
  @override
  String get name => throw _privateConstructorUsedError;
  @override
  String get author => throw _privateConstructorUsedError;
  @override
  String get category => throw _privateConstructorUsedError;
  @override
  int get id => throw _privateConstructorUsedError;
  @override
  @JsonKey(ignore: true)
  _$BookDetailModelCopyWith<_BookDetailModel> get copyWith =>
      throw _privateConstructorUsedError;
}
