import 'package:bloc/bloc.dart';
import 'package:equatable/equatable.dart';

import '../../domain/usecases/comment.dart';
import '../../domain/usecases/get_topics.dart';
import '../../domain/usecases/post.dart';

part 'community_event.dart';
part 'community_state.dart';

class CommunityBloc extends Bloc<CommunityEvent, CommunityState> {
  Post post;
  Comment comment;
  GetTopics getTopics;
  CommunityBloc({required this.post, required this.comment, required this.getTopics}) : super(Empty()) {
    on<PostTopic>((event, emit) async{
        await post(TopicParams(id: "1", ownId: "2343",createAt: DateTime.now(),title: "read a book", details: "explain the context"));
    });

    on<PostCommentEvent>((event, emit) async{
         await comment(CommentParams(topicId: "-NjUAtuZweWeRHeMlilk", message: "test for comment", createAt: DateTime.now(), userId: "1", username: "vanlakhn", profileUrl: ""));
    });

    on<GetTopicsEvent>(((event, emit) async{
      await getTopics(NoParams());
    } ));
  }
}
