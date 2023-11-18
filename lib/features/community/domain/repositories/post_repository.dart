import 'package:either_dart/either.dart';
import 'package:lao_dictionary/core/enums/actions_enums.dart';
import 'package:lao_dictionary/core/failure/failures.dart';
import 'package:lao_dictionary/features/community/data/model/topic_model.dart';

import '../../data/model/comment_model.dart';

abstract class PostRepository{
  Future<Either<Failure, actions>> postTopic(TopicModel params);
  Future<Either<Failure, actions>> postComment(CommentModel params);
}