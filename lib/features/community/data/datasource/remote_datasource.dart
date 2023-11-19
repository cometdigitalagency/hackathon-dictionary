import 'dart:convert';

import 'package:dio/dio.dart';
import 'package:either_dart/either.dart';
import 'package:lao_dictionary/core/enums/actions_enums.dart';
import 'package:lao_dictionary/features/community/data/model/comment_model.dart';
import 'package:lao_dictionary/features/community/data/model/topic_model.dart';
import 'package:lao_dictionary/features/community/domain/usecases/comments.dart';

import '../../../../core/failure/failures.dart';
import '../../domain/entities/comment_entity.dart';
import '../../domain/usecases/post.dart';

abstract class RemoteDataSource {
  Future<Either<Failure, actions>> postTopic(TopicParams params);
  Future<Either<Failure, actions>> postComment(CommentsParam commentModel);
  Future<Either<Failure, List<TopicModel>>> getTopics();
}

class RemoteDataSourceImpl implements RemoteDataSource {
  Dio dioClient;

  RemoteDataSourceImpl({required this.dioClient});

  @override
  Future<Either<Failure, actions>> postTopic(TopicParams params) async {
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
  Future<Either<Failure, actions>> postComment(CommentsParam params) async {
    // TODO: implement postComment
    final result = await dioClient.post(
        'https://laodictionary-4ad3c-default-rtdb.firebaseio.com/posts/${params.topicId}/commenst.json',
        data: params.toJson());
    if (result.statusCode == 200) {
      return const Right(actions.successfully);
    } else {
      return Left(ServerFailure());
    }
  }

  @override
  Future<Either<Failure, List<TopicModel>>> getTopics() async {
    // TODO: implement getTopics
    final result = await dioClient.get(
        'https://laodictionary-4ad3c-default-rtdb.firebaseio.com/posts.json');
    List<TopicModel> list = [];
    result.data.forEach((key, value) {
      list.add(TopicModel.fromJson(value));
    });

    if (list.isEmpty) {
      return Left(ServerFailure());
    } else {
      return Right(list);
    }
  }
}
