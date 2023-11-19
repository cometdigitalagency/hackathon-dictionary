import 'package:either_dart/either.dart';
import 'package:lao_dictionary/core/enums/actions_enums.dart';
import 'package:lao_dictionary/core/failure/failures.dart';
import 'package:lao_dictionary/features/community/domain/usecases/comments.dart';
import 'package:lao_dictionary/features/community/domain/usecases/post.dart';



abstract class PostRepository{
  Future<Either<Failure, actions>> postTopic(TopicParams params);
  Future<Either<Failure, actions>> postComment(CommentsParam params);
}