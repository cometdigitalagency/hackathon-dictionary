import 'package:either_dart/src/either.dart';
import 'package:equatable/equatable.dart';
import 'package:lao_dictionary/core/failure/failures.dart';
import 'package:lao_dictionary/features/dictionary/domain/repositories/get_words_repository.dart';

import '../../../../core/usecases/Usecase.dart';
import '../Entities/word.dart';

class GetWords extends Usecase<Word, Params>{
  IGetWordRepository getWordRepository;
  GetWords({required this.getWordRepository});
  
  @override
  Future<Either<Failure, Word>> call(Params params) async{
    // TODO: implement call
    return getWordRepository.getWord();
  }


}


class Params extends Equatable{
  final String keywords;
  const Params({required this.keywords});
  @override
  // TODO: implement props
  List<Object?> get props => [keywords];

}