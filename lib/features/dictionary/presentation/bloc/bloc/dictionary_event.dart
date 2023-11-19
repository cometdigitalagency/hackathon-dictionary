part of 'dictionary_bloc.dart';

sealed class DictionaryEvent extends Equatable {
  const DictionaryEvent();

  @override
  List<Object> get props => [];
}

class GetWordsEvent extends DictionaryEvent{
  String keywords;
  GetWordsEvent({required this.keywords});
}
