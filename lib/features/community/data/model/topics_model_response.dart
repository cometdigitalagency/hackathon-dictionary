import 'package:lao_dictionary/features/community/domain/entities/topics.dart';

import 'comment_model_response.dart';


class TopicsModelResponse extends Topics{
  TopicsModelResponse({required super.id, required super.ownerId, required super.createAt, required super.title, required super.details, required super.comments});
  
    factory TopicsModelResponse.fromJson(Map<String, dynamic> json) {
    var list = json['addresses'] as List;
    List<CommentModelRespons> addressList = list.map((i) => CommentModelRespons.fromJson(i)).toList();

    return TopicsModelResponse(
      id: json['id'],
      ownerId: json['ownerId'],
      createAt: json['createAt'],
        title: json['title'],
        details: json['details'],
      comments: addressList,
    );
  }
}

