// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'topic_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

TopicModel _$TopicModelFromJson(Map<String, dynamic> json) => TopicModel(
      id: json['id'] as String,
      ownerId: json['ownerId'] as String,
      createAt: DateTime.parse(json['createAt'] as String),
      title: json['title'] as String,
      details: json['details'] as String,
    );

Map<String, dynamic> _$TopicModelToJson(TopicModel instance) =>
    <String, dynamic>{
      'id': instance.id,
      'ownerId': instance.ownerId,
      'createAt': instance.createAt.toIso8601String(),
      'title': instance.title,
      'details': instance.details,
    };
