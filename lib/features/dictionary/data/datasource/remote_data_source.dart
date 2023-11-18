import 'package:either_dart/either.dart';
import 'package:lao_dictionary/features/dictionary/data/models/word_model.dart';

import '../../../../core/failure/failures.dart';

abstract class RemoteDataSource {
  Future<Either<Failure, WordModel>> loadWord();
  Future<Either<Failure, bool>>  cachedWord();
}

class RemoteDataSourceImpl extends RemoteDataSource{
  @override
  Future<Either<Failure, WordModel>> loadWord() {
    // TODO: implement loadWord
    throw UnimplementedError();
  }
  
  @override
  Future<Either<Failure, bool>> cachedWord() {
    // TODO: implement cachedWord
    throw UnimplementedError();
  }

}