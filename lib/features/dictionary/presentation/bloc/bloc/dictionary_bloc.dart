import 'package:bloc/bloc.dart';
import 'package:equatable/equatable.dart';
import 'package:lao_dictionary/features/community/presentation/bloc/community_bloc.dart';
import 'package:lao_dictionary/features/dictionary/domain/Entities/word.dart';
import 'package:lao_dictionary/features/dictionary/domain/usecases/get_words.dart';

part 'dictionary_event.dart';
part 'dictionary_state.dart';

class DictionaryBloc extends Bloc<DictionaryEvent, DictionaryState> {
  GetWords getWords;
  DictionaryBloc({required this.getWords}) : super(DictionaryInitial()) {
    on<GetWordsEvent>((event, emit) async{
      // TODO: implement event handler
      final result = await  getWords(Params(keywords: ""));
      await result.fold((left) async=> emit(Empty()), (right) async=>  emit(RecievedWords(word: right)));
    });
  }
}
