import 'package:either_dart/src/either.dart';
import 'package:equatable/equatable.dart';
import 'package:lao_dictionary/core/enums/actions_enums.dart';
import 'package:lao_dictionary/core/failure/failures.dart';
import 'package:lao_dictionary/core/usecases/Usecase.dart';
import 'package:lao_dictionary/features/community/data/model/comment_model.dart';
import 'package:lao_dictionary/features/community/domain/repositories/post_repository.dart';

class Comment implements Usecase<actions, CommentParams>{
  PostRepository repository;
  Comment({required this.repository});
  
  @override
  Future<Either<Failure, actions>> call(CommentParams params) {
    // TODO: implement call
    return repository.postComment(CommentModel( topicId: params.topicId ,message: params.message, createAt: params.createAt, userId: params.userId, username: params.username, profileUrl: params.profileUrl));
  }

}

class CommentParams extends Equatable{
  final String topicId;
  final String message;
  final DateTime createAt;
  final String userId;
  final String username;
  final String profileUrl;

  const CommentParams({required this.topicId,required this.message, required this.createAt, required this.userId, required this.username, required this.profileUrl});
  @override
  // TODO: implement props
  List<Object?> get props => [message, createAt, userId, username, profileUrl];

}