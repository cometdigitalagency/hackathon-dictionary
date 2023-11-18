// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'comment_model_response.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

CommentModelRespons _$CommentModelResponsFromJson(Map<String, dynamic> json) =>
    CommentModelRespons(
      message: json['message'] as String,
      createAt: DateTime.parse(json['createAt'] as String),
      userId: json['userId'] as String,
      username: json['username'] as String,
      profileUrl: json['profileUrl'] as String,
    );

Map<String, dynamic> _$CommentModelResponsToJson(
        CommentModelRespons instance) =>
    <String, dynamic>{
      'message': instance.message,
      'createAt': instance.createAt.toIso8601String(),
      'userId': instance.userId,
      'username': instance.username,
      'profileUrl': instance.profileUrl,
    };
