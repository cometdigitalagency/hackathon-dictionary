import 'dart:convert';

import 'package:either_dart/either.dart';
import 'package:flutter/services.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:lao_dictionary/core/exceptions/exceptions.dart';
import 'package:lao_dictionary/core/failure/failures.dart';
import 'package:lao_dictionary/features/dictionary/data/models/word_model.dart';
import 'package:lao_dictionary/features/dictionary/data/models/words_response.dart';
import '../../../../core/assets/dictionary/fixure.dart';

abstract class LocalDataSource{
  Future<Either<Failure, List<WordModel>>>  getLocalWords();
} 
class LocalDataSourceImpl implements  LocalDataSource{

  @override
  Future<Either<Failure, List<WordModel>>> getLocalWords() async{
    // TODO: implement getLocalWor
    
    String data = await rootBundle.loadString("lib/core/assets/dictionary/dictionaly.json");
    Map<String, dynamic> jsonData = await json.decode(data);
    List<WordModel> words = [];
    jsonData.forEach((key, value) {
    words.add(WordModel(word: key, meaning: value));});
    if(words.isEmpty){
     return Left(CacheFailure(message: "There is no words in the systems"));
    }else{
    return Right(words);
    }
  }
}