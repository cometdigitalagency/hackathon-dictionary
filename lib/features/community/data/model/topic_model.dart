
import 'package:lao_dictionary/features/community/domain/entities/topics.dart';
import 'package:json_annotation/json_annotation.dart';
part 'topic_model.g.dart';


@JsonSerializable()
class TopicModel extends Topics{
  TopicModel({required super.id, required super.ownerId, required super.createAt, required super.title, required super.details});

   factory TopicModel.fromJson(Map<String, dynamic> json) => _$TopicModelFromJson(json);
  Map<String, dynamic> toJson() => _$TopicModelToJson(this);
}