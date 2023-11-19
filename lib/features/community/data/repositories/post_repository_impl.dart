
import 'package:either_dart/src/either.dart';
import 'package:lao_dictionary/core/enums/actions_enums.dart';
import 'package:lao_dictionary/core/enums/network_type.dart';
import 'package:lao_dictionary/core/failure/failures.dart';
import 'package:lao_dictionary/core/network/network_info.dart';
import 'package:lao_dictionary/features/community/data/datasource/remote_datasource.dart';
import 'package:lao_dictionary/features/community/domain/usecases/comments.dart';
import 'package:lao_dictionary/features/community/domain/usecases/post.dart';
import '../../domain/repositories/post_repository.dart';

class PostRepositoryImpl implements PostRepository{
  RemoteDataSource remoteDataSource;
  NetworkInfo netWorkInfo;
  PostRepositoryImpl({required this.remoteDataSource, required this.netWorkInfo});
  @override
  Future<Either<Failure, actions>> postTopic(TopicParams params) async{
    // TODO: implement postTopic
     return _postData(() async => remoteDataSource.postTopic(params));
  }
  
  @override
  Future<Either<Failure, actions>> postComment(CommentsParam params) async{
     return await _postData(() async => remoteDataSource.postComment(params) );
  }

  Future<Either<Failure, actions>> _postData(Future<Either<Failure, actions>> Function() postOrComment) async{
    NetworkType networkResult =await netWorkInfo.isConnected;
    if(networkResult == NetworkType.IsConnect){
     return postOrComment(); 
    }else{
      return Left(ServerFailure());
    }
  }
}