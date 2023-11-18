import 'package:dio/dio.dart';
import 'package:either_dart/either.dart';
import 'package:lao_dictionary/core/enums/actions_enums.dart';
import 'package:lao_dictionary/core/failure/failures.dart';
import 'package:lao_dictionary/features/community/data/model/topic_model.dart';
import 'package:lao_dictionary/features/community/data/model/topics_model_response.dart';

import '../model/comment_model.dart';

abstract class RemoteDataSource {
  Future<Either<Failure, actions>> postTopic(TopicModel params);
  Future<Either<Failure, actions>> postComment(CommentModel commentModel);
  Future<Either<Failure, List<TopicsModelResponse>>> getTopics();
}

class RemoteDataSourceImpl implements RemoteDataSource {
  Dio dioClient;
  
  RemoteDataSourceImpl({required this.dioClient});

  @override
  Future<Either<Failure,actions>> postTopic(TopicModel params) async {
    // TODO: implement uploadPost

      final result = await dioClient.post(
          'https://laodictionary-4ad3c-default-rtdb.firebaseio.com/posts.json',
          data: params.toJson());
      if (result.statusCode == 200) {
        print(result.statusCode);
        return const Right(actions.successfully);
      } else {
        return Left(ServerFailure());
      }
 
  }
  
  @override
  Future<Either<Failure, actions>> postComment(CommentModel params) async{
    // TODO: implement postComment
        final result = await dioClient.post(
          'https://laodictionary-4ad3c-default-rtdb.firebaseio.com/posts/${params.topicId}/commenst.json',
          data: params.toJson());
      if (result.statusCode == 200) {
        print(result.statusCode);
        return const Right(actions.successfully);
      } else {
        return Left(ServerFailure());
      }
  }
  
  @override
  Future<Either<Failure, List<TopicsModelResponse>>> getTopics() async{
    // TODO: implement getTopics
            final result = await dioClient.get(
          'https://laodictionary-4ad3c-default-rtdb.firebaseio.com/posts');

        print(result.data);
        print(result.statusCode);
 
      throw UnimplementedError();
  }

}
