part of 'community_bloc.dart';

sealed class CommunityState extends Equatable {
  const CommunityState();
  
  @override
  List<Object> get props => [];
}


class Empty extends CommunityState{
  
}
class Posting extends CommunityState{

}
class PostedTopic extends CommunityState{

}

class PostedComment extends CommunityState{

}


