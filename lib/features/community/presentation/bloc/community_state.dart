part of 'community_bloc.dart';

sealed class CommunityState extends Equatable {
  const CommunityState();
  
  @override
  List<Object> get props => [];
}


class Empty extends CommunityState{
  
}

class Loading extends CommunityState{

}
class Posting extends CommunityState{

}
class PostedTopic extends CommunityState{

}

class PostedComment extends CommunityState{

}

class GetDailyTopic extends CommunityState{
    List<Topics> topics;
    GetDailyTopic({required this.topics});
}


