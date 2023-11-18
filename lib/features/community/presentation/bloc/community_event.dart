part of 'community_bloc.dart';

sealed class CommunityEvent extends Equatable {
  const CommunityEvent();

  @override
  List<Object> get props => [];
}


class PostTopic extends CommunityEvent{
  
}

class PostCommentEvent extends CommunityEvent{
  
}

class GetTopicsEvent extends CommunityEvent{
  
}
