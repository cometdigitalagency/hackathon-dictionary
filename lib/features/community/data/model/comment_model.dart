import 'package:equatable/equatable.dart';
import 'package:json_annotation/json_annotation.dart';

part 'comment_model.g.dart';
@JsonSerializable()
class CommentModel {
  String topicId;
  String message;
  DateTime createAt;
  String userId;
  String username;
  String profileUrl;

CommentModel({required this.topicId,required this.message,required this.createAt, required this.userId,required this.username ,required this.profileUrl});
  @override
  // TODO: implement props
  List<Object?> get props => throw UnimplementedError();

   factory CommentModel.fromJson(Map<String, dynamic> json) => _$CommentModelFromJson(json);

  /// Connect the generated [_$PersonToJson] function to the `toJson` method.
  Map<String, dynamic> toJson() => _$CommentModelToJson(this);
}