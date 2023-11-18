import 'package:json_annotation/json_annotation.dart';
part 'topic_model.g.dart';

@JsonSerializable()
class TopicModel{
  String id;
  String ownerId;
  DateTime createAt;
  String title;
  String details;

  TopicModel({required this.id, required this.ownerId,required this.createAt ,required this.title, required this.details});
   factory TopicModel.fromJson(Map<String, dynamic> json) => _$TopicModelFromJson(json);

  /// Connect the generated [_$PersonToJson] function to the `toJson` method.
  Map<String, dynamic> toJson() => _$TopicModelToJson(this);
}