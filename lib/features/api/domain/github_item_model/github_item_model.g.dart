// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'github_item_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_GithubItem _$$_GithubItemFromJson(Map<String, dynamic> json) =>
    _$_GithubItem(
      name: json['name'] as String?,
      path: json['path'] as String?,
      sha: json['sha'] as String?,
      size: json['size'] as int?,
      url: json['url'] as String?,
      html_url: json['html_url'] as String?,
      git_url: json['git_url'] as String?,
      download_url: json['download_url'] as String?,
      type: json['type'] as String?,
      links: json['links'] == null
          ? null
          : Links.fromJson(json['links'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$$_GithubItemToJson(_$_GithubItem instance) =>
    <String, dynamic>{
      'name': instance.name,
      'path': instance.path,
      'sha': instance.sha,
      'size': instance.size,
      'url': instance.url,
      'html_url': instance.html_url,
      'git_url': instance.git_url,
      'download_url': instance.download_url,
      'type': instance.type,
      'links': instance.links,
    };

_$_Links _$$_LinksFromJson(Map<String, dynamic> json) => _$_Links(
      self: json['self'] as String?,
      git: json['git'] as String?,
      html: json['html'] as String?,
    );

Map<String, dynamic> _$$_LinksToJson(_$_Links instance) => <String, dynamic>{
      'self': instance.self,
      'git': instance.git,
      'html': instance.html,
    };
