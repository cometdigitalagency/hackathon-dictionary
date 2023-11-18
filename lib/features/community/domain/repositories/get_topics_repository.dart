import 'package:either_dart/either.dart';
import 'package:lao_dictionary/core/failure/failures.dart';
import 'package:lao_dictionary/features/community/domain/entities/topics.dart';

abstract class GetTopicsRepository{
  Future<Either<Failure, List<Topics>>> getTopics();
}