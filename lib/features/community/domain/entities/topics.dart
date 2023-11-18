import 'package:equatable/equatable.dart';
import 'package:lao_dictionary/features/community/data/model/comment_model_response.dart';
import 'package:lao_dictionary/features/community/domain/entities/Comment.dart';

class Topics extends Equatable{
  final String id;
  final String ownerId;
  final DateTime createAt;
  final String title;
  final String details;
  final List<CommentModelRespons> comments;

  const Topics({required this.id, required this.ownerId, required this.createAt, required this.title, required this.details, required this.comments});
  
  @override
  // TODO: implement props
  List<Object?> get props => [id, ownerId, createAt, title, details, comments];
}