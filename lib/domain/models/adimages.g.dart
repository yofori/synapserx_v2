// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'adimages.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$ADImagesImpl _$$ADImagesImplFromJson(Map<String, dynamic> json) =>
    _$ADImagesImpl(
      id: json['_id'] as String,
      description: json['description'] as String?,
      urlToImage: json['urlToImage'] as String?,
      url: json['url'] as String?,
      title: json['title'] as String?,
      status: json['status'] as String?,
      content: json['content'] as String?,
      createdAt: json['createdAt'] as String?,
      updatedAt: json['updatedAt'] as String?,
    );

Map<String, dynamic> _$$ADImagesImplToJson(_$ADImagesImpl instance) =>
    <String, dynamic>{
      '_id': instance.id,
      'description': instance.description,
      'urlToImage': instance.urlToImage,
      'url': instance.url,
      'title': instance.title,
      'status': instance.status,
      'content': instance.content,
      'createdAt': instance.createdAt,
      'updatedAt': instance.updatedAt,
    };
