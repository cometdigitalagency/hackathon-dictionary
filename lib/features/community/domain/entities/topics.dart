import 'package:equatable/equatable.dart';
import 'package:lao_dictionary/features/community/domain/entities/comment_entity.dart';


class Topics extends Equatable{
  final String id;
  final String ownerId;
  final DateTime createAt;
  final String title;
  final String details;

  const Topics({required this.id, required this.ownerId, required this.createAt, required this.title, required this.details});
  
  @override
  // TODO: implement props
  List<Object?> get props => [id, ownerId, createAt, title, details];
}