import 'package:lao_dictionary/features/community/domain/entities/comment.dart';
import 'package:json_annotation/json_annotation.dart';
part 'comment_model_response.g.dart';

@JsonSerializable()
class CommentModelRespons extends Comments{
  CommentModelRespons({required super.message, required super.createAt, required super.userId, required super.username, required super.profileUrl});
  
  factory CommentModelRespons.fromJson(Map<String, dynamic> json) => _$CommentModelResponsFromJson(json);

  /// Connect the generated [_$PersonToJson] function to the `toJson` method.
  Map<String, dynamic> toJson() => _$CommentModelResponsToJson(this);
}