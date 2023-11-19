import 'package:lao_dictionary/features/community/domain/entities/comment_entity.dart';



class CommentModel extends CommentEntity {
  CommentModel({required super.message, required super.createAt, required super.userId, required super.username, required super.profileUrl});
}