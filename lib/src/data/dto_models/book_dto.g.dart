// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'book_dto.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$BookDtoImpl _$$BookDtoImplFromJson(Map<String, dynamic> json) =>
    _$BookDtoImpl(
      key: json['key'] as String,
      authorName: (json['author_name'] as List<dynamic>?)
              ?.map((e) => e as String)
              .toList() ??
          [],
      title: json['title'] as String,
    );

Map<String, dynamic> _$$BookDtoImplToJson(_$BookDtoImpl instance) =>
    <String, dynamic>{
      'key': instance.key,
      'author_name': instance.authorName,
      'title': instance.title,
    };
