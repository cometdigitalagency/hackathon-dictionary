import 'package:either_dart/either.dart';
import 'package:lao_dictionary/core/failure/failures.dart';
import 'package:lao_dictionary/features/dictionary/data/models/word_model.dart';

abstract class LocalDataSource{
  Future<Either<Failure, WordModel>>  getLocalWords();

} 