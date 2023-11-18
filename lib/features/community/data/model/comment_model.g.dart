// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'comment_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

CommentModel _$CommentModelFromJson(Map<String, dynamic> json) => CommentModel(
      topicId: json['topicId'] as String,
      message: json['message'] as String,
      createAt: DateTime.parse(json['createAt'] as String),
      userId: json['userId'] as String,
      username: json['username'] as String,
      profileUrl: json['profileUrl'] as String,
    );

Map<String, dynamic> _$CommentModelToJson(CommentModel instance) =>
    <String, dynamic>{
      'topicId': instance.topicId,
      'message': instance.message,
      'createAt': instance.createAt.toIso8601String(),
      'userId': instance.userId,
      'username': instance.username,
      'profileUrl': instance.profileUrl,
    };
