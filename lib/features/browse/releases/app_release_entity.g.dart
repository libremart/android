// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'app_release_entity.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_AppReleaseEntity _$$_AppReleaseEntityFromJson(Map<String, dynamic> json) =>
    _$_AppReleaseEntity(
      id: json['id'] as String,
      updated: json['updated'] as String,
      link: json['link'] as String,
      title: json['title'] as String,
      content: json['content'] as String,
      author: json['author'] as String,
      thumbnail: json['thumbnail'] as String,
    );

Map<String, dynamic> _$$_AppReleaseEntityToJson(_$_AppReleaseEntity instance) =>
    <String, dynamic>{
      'id': instance.id,
      'updated': instance.updated,
      'link': instance.link,
      'title': instance.title,
      'content': instance.content,
      'author': instance.author,
      'thumbnail': instance.thumbnail,
    };
