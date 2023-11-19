import 'package:either_dart/src/either.dart';
import 'package:flutter/material.dart';
import 'package:lao_dictionary/core/failure/failures.dart';
import 'package:lao_dictionary/features/dictionary/data/datasource/local_data_source.dart';
import 'package:lao_dictionary/features/dictionary/domain/repositories/get_words_repository.dart';

import '../../domain/Entities/word.dart';

class GetWordRepositoryImp implements IGetWordRepository{
  LocalDataSourceImpl datasource;
  
  GetWordRepositoryImp({required this.datasource});
  @override
  Future<Either<Failure, List<Word>>> getWord() async{
    // TODO: implement getWord
     return await datasource.getLocalWords();
  }

}