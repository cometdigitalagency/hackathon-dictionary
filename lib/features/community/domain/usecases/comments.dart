
import 'package:either_dart/either.dart';
import 'package:equatable/equatable.dart';

import '../../../../core/enums/actions_enums.dart';
import '../../../../core/failure/failures.dart';
import '../../../../core/usecases/Usecase.dart';
import '../repositories/post_repository.dart';

class Comment implements Usecase<actions, CommentsParam > {
  PostRepository repository;
  Comment({required this.repository});
  
  @override
  Future<Either<Failure, actions>> call(CommentsParam params) {
    // TODO: implement call
   return repository.postComment(params);
  }
  



}

class CommentsParam extends Equatable {
  final String topicId;
  final String message;
  final DateTime createAt;
  final String userId;
  final String username;
  final String profileUrl;

   CommentsParam(
      {required this.topicId,
      required this.message,
      required this.createAt,
      required this.userId,
      required this.username,
      required this.profileUrl});
  @override
  // TODO: implement props
  List<Object?> get props => [message, createAt, userId, username, profileUrl];

  Map<String, dynamic> toJson() {
    return {
      'topicId': topicId,
      'message': message,
      'createAt': createAt,
      'userId': userId,
      'username': username,
      'profileUrl': profileUrl
      // Include other fields as needed.
    };
  }
}
