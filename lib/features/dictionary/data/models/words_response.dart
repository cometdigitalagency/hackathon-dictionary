import 'package:lao_dictionary/features/dictionary/data/models/word_model.dart';
import 'package:json_annotation/json_annotation.dart';

@JsonSerializable()
class WordsResponse{
  List<WordModel> words;

  WordsResponse({required this.words});


}