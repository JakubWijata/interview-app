// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'books_result_page_dto.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$BooksResultPageDTOImpl _$$BooksResultPageDTOImplFromJson(
        Map<String, dynamic> json) =>
    _$BooksResultPageDTOImpl(
      books: (json['docs'] as List<dynamic>)
          .map((e) => BookDTO.fromJson(e as Map<String, dynamic>))
          .toList(),
      start: (json['start'] as num).toInt(),
      numFound: (json['numFound'] as num).toInt(),
    );

Map<String, dynamic> _$$BooksResultPageDTOImplToJson(
        _$BooksResultPageDTOImpl instance) =>
    <String, dynamic>{
      'docs': instance.books,
      'start': instance.start,
      'numFound': instance.numFound,
    };
