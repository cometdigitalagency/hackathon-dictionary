part of 'dictionary_bloc.dart';

sealed class DictionaryState extends Equatable {
  const DictionaryState();
  
  @override
  List<Object> get props => [];
}

final class DictionaryInitial extends DictionaryState {

}
class Empty extends DictionaryState{

}
class RecievedWords extends DictionaryState{
  final List<Word> word;
  RecievedWords({required this.word});
}
