import 'package:either_dart/src/either.dart';
import 'package:equatable/equatable.dart';
import 'package:lao_dictionary/core/enums/actions_enums.dart';
import 'package:lao_dictionary/core/failure/failures.dart';
import 'package:lao_dictionary/core/usecases/Usecase.dart';
import 'package:lao_dictionary/features/community/domain/repositories/post_repository.dart';

class Post implements Usecase<actions, TopicParams>{
  final PostRepository repository;
  Post({required this.repository});
  
  @override
  Future<Either<Failure, actions>> call(TopicParams params) async{
    // TODO: implement call
     return await repository.postTopic(params);
  }
}

class TopicParams extends Equatable{
  final String id;
  final String ownId;
  final DateTime createAt;
  final String title;
  final String details;
  const TopicParams({required this.id, required this.ownId,required this.createAt ,required this.title,required this.details});
  @override
  // TODO: implement props
  List<Object?> get props => [id, ownId, title, details];

Map<String, dynamic> toJson() {
  return {
    'id': id,
    'ownId': ownId,
    'createAt': createAt,
    'title': title,
    'details':details,
  };
}
}