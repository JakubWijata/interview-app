import 'package:freezed_annotation/freezed_annotation.dart';

part 'book.freezed.dart';

@freezed
class Book with _$Book {
  const factory Book({
    required String key,
    required List<String> authorNames,
    required String title,
  }) = _Book;
}
