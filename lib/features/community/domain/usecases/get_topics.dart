import 'package:either_dart/src/either.dart';
import 'package:equatable/equatable.dart';
import 'package:lao_dictionary/core/failure/failures.dart';
import 'package:lao_dictionary/core/usecases/Usecase.dart';
import 'package:lao_dictionary/features/community/domain/entities/topics.dart';
import 'package:lao_dictionary/features/community/domain/repositories/get_topics_repository.dart';

class GetTopics implements Usecase<List<Topics>, NoParams>{
  GetTopicsRepository repository;
  GetTopics({required this.repository});
  @override
  Future<Either<Failure, List<Topics>>> call(void params) async{
    // TODO: implement call
     return await repository.getTopics();
  }
   
}

class NoParams extends Equatable{
  @override
  // TODO: implement props
  List<Object?> get props => [];

}