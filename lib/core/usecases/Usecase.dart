import 'package:either_dart/either.dart';
import 'package:lao_dictionary/core/failure/failures.dart';

abstract class Usecase<Type, Params> {
     Future<Either<Failure, Type>> call(Params params);
}