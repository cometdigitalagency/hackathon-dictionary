import 'package:either_dart/either.dart';
import 'package:lao_dictionary/core/failure/failures.dart';

import '../Entities/word.dart';

abstract class IGetWordRepository{
   Future<Either<Failure, List<Word>>> getWord();
}