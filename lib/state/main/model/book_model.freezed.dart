// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'book_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$BookListModel {
  String get name => throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(
            String name, String path, String author, String category, int id)
        bookModel,
    required TResult Function(String name) bookCategory,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function(
            String name, String path, String author, String category, int id)?
        bookModel,
    TResult Function(String name)? bookCategory,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(
            String name, String path, String author, String category, int id)?
        bookModel,
    TResult Function(String name)? bookCategory,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(BookModel value) bookModel,
    required TResult Function(BookCategory value) bookCategory,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(BookModel value)? bookModel,
    TResult Function(BookCategory value)? bookCategory,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(BookModel value)? bookModel,
    TResult Function(BookCategory value)? bookCategory,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $BookListModelCopyWith<BookListModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $BookListModelCopyWith<$Res> {
  factory $BookListModelCopyWith(
          BookListModel value, $Res Function(BookListModel) then) =
      _$BookListModelCopyWithImpl<$Res>;
  $Res call({String name});
}

/// @nodoc
class _$BookListModelCopyWithImpl<$Res>
    implements $BookListModelCopyWith<$Res> {
  _$BookListModelCopyWithImpl(this._value, this._then);

  final BookListModel _value;
  // ignore: unused_field
  final $Res Function(BookListModel) _then;

  @override
  $Res call({
    Object? name = freezed,
  }) {
    return _then(_value.copyWith(
      name: name == freezed
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
abstract class $BookModelCopyWith<$Res>
    implements $BookListModelCopyWith<$Res> {
  factory $BookModelCopyWith(BookModel value, $Res Function(BookModel) then) =
      _$BookModelCopyWithImpl<$Res>;
  @override
  $Res call({String name, String path, String author, String category, int id});
}

/// @nodoc
class _$BookModelCopyWithImpl<$Res> extends _$BookListModelCopyWithImpl<$Res>
    implements $BookModelCopyWith<$Res> {
  _$BookModelCopyWithImpl(BookModel _value, $Res Function(BookModel) _then)
      : super(_value, (v) => _then(v as BookModel));

  @override
  BookModel get _value => super._value as BookModel;

  @override
  $Res call({
    Object? name = freezed,
    Object? path = freezed,
    Object? author = freezed,
    Object? category = freezed,
    Object? id = freezed,
  }) {
    return _then(BookModel(
      name: name == freezed
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      path: path == freezed
          ? _value.path
          : path // ignore: cast_nullable_to_non_nullable
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

class _$BookModel implements BookModel {
  _$BookModel(
      {required this.name,
      required this.path,
      required this.author,
      required this.category,
      required this.id});

  @override
  final String name;
  @override
  final String path;
  @override
  final String author;
  @override
  final String category;
  @override
  final int id;

  @override
  String toString() {
    return 'BookListModel.bookModel(name: $name, path: $path, author: $author, category: $category, id: $id)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is BookModel &&
            const DeepCollectionEquality().equals(other.name, name) &&
            const DeepCollectionEquality().equals(other.path, path) &&
            const DeepCollectionEquality().equals(other.author, author) &&
            const DeepCollectionEquality().equals(other.category, category) &&
            const DeepCollectionEquality().equals(other.id, id));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(name),
      const DeepCollectionEquality().hash(path),
      const DeepCollectionEquality().hash(author),
      const DeepCollectionEquality().hash(category),
      const DeepCollectionEquality().hash(id));

  @JsonKey(ignore: true)
  @override
  $BookModelCopyWith<BookModel> get copyWith =>
      _$BookModelCopyWithImpl<BookModel>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(
            String name, String path, String author, String category, int id)
        bookModel,
    required TResult Function(String name) bookCategory,
  }) {
    return bookModel(name, path, author, category, id);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function(
            String name, String path, String author, String category, int id)?
        bookModel,
    TResult Function(String name)? bookCategory,
  }) {
    return bookModel?.call(name, path, author, category, id);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(
            String name, String path, String author, String category, int id)?
        bookModel,
    TResult Function(String name)? bookCategory,
    required TResult orElse(),
  }) {
    if (bookModel != null) {
      return bookModel(name, path, author, category, id);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(BookModel value) bookModel,
    required TResult Function(BookCategory value) bookCategory,
  }) {
    return bookModel(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(BookModel value)? bookModel,
    TResult Function(BookCategory value)? bookCategory,
  }) {
    return bookModel?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(BookModel value)? bookModel,
    TResult Function(BookCategory value)? bookCategory,
    required TResult orElse(),
  }) {
    if (bookModel != null) {
      return bookModel(this);
    }
    return orElse();
  }
}

abstract class BookModel implements BookListModel {
  factory BookModel(
      {required final String name,
      required final String path,
      required final String author,
      required final String category,
      required final int id}) = _$BookModel;

  @override
  String get name => throw _privateConstructorUsedError;
  String get path => throw _privateConstructorUsedError;
  String get author => throw _privateConstructorUsedError;
  String get category => throw _privateConstructorUsedError;
  int get id => throw _privateConstructorUsedError;
  @override
  @JsonKey(ignore: true)
  $BookModelCopyWith<BookModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $BookCategoryCopyWith<$Res>
    implements $BookListModelCopyWith<$Res> {
  factory $BookCategoryCopyWith(
          BookCategory value, $Res Function(BookCategory) then) =
      _$BookCategoryCopyWithImpl<$Res>;
  @override
  $Res call({String name});
}

/// @nodoc
class _$BookCategoryCopyWithImpl<$Res> extends _$BookListModelCopyWithImpl<$Res>
    implements $BookCategoryCopyWith<$Res> {
  _$BookCategoryCopyWithImpl(
      BookCategory _value, $Res Function(BookCategory) _then)
      : super(_value, (v) => _then(v as BookCategory));

  @override
  BookCategory get _value => super._value as BookCategory;

  @override
  $Res call({
    Object? name = freezed,
  }) {
    return _then(BookCategory(
      name: name == freezed
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$BookCategory implements BookCategory {
  _$BookCategory({required this.name});

  @override
  final String name;

  @override
  String toString() {
    return 'BookListModel.bookCategory(name: $name)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is BookCategory &&
            const DeepCollectionEquality().equals(other.name, name));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(name));

  @JsonKey(ignore: true)
  @override
  $BookCategoryCopyWith<BookCategory> get copyWith =>
      _$BookCategoryCopyWithImpl<BookCategory>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(
            String name, String path, String author, String category, int id)
        bookModel,
    required TResult Function(String name) bookCategory,
  }) {
    return bookCategory(name);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function(
            String name, String path, String author, String category, int id)?
        bookModel,
    TResult Function(String name)? bookCategory,
  }) {
    return bookCategory?.call(name);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(
            String name, String path, String author, String category, int id)?
        bookModel,
    TResult Function(String name)? bookCategory,
    required TResult orElse(),
  }) {
    if (bookCategory != null) {
      return bookCategory(name);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(BookModel value) bookModel,
    required TResult Function(BookCategory value) bookCategory,
  }) {
    return bookCategory(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(BookModel value)? bookModel,
    TResult Function(BookCategory value)? bookCategory,
  }) {
    return bookCategory?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(BookModel value)? bookModel,
    TResult Function(BookCategory value)? bookCategory,
    required TResult orElse(),
  }) {
    if (bookCategory != null) {
      return bookCategory(this);
    }
    return orElse();
  }
}

abstract class BookCategory implements BookListModel {
  factory BookCategory({required final String name}) = _$BookCategory;

  @override
  String get name => throw _privateConstructorUsedError;
  @override
  @JsonKey(ignore: true)
  $BookCategoryCopyWith<BookCategory> get copyWith =>
      throw _privateConstructorUsedError;
}
