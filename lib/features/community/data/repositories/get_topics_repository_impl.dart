import 'package:either_dart/src/either.dart';
import 'package:lao_dictionary/core/failure/failures.dart';
import 'package:lao_dictionary/features/community/data/datasource/remote_datasource.dart';
import 'package:lao_dictionary/features/community/domain/entities/topics.dart';
import 'package:lao_dictionary/features/community/domain/repositories/get_topics_repository.dart';

class GetTopicsRepositoryImpl implements GetTopicsRepository{
  RemoteDataSource remoteDataSource;

  GetTopicsRepositoryImpl({required this.remoteDataSource});
  @override
  Future<Either<Failure, List<Topics>>> getTopics() async{
    // TODO: implement getTopics
    return await remoteDataSource.getTopics();
  }
  
}