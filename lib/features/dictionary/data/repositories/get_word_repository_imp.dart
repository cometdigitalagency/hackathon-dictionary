import 'package:either_dart/src/either.dart';
import 'package:lao_dictionary/core/failure/failures.dart';
import 'package:lao_dictionary/features/dictionary/domain/repositories/get_words_repository.dart';

import '../../domain/Entities/word.dart';

class GetWordRepositoryImp implements IGetWordRepository{
  @override
  Future<Either<Failure, Word>> getWord() {
    // TODO: implement getWord
    throw UnimplementedError();
  }

}