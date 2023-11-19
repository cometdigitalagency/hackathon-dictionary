

import 'package:connectivity_plus/connectivity_plus.dart';
import 'package:dio/dio.dart';
import 'package:get_it/get_it.dart';
import 'package:lao_dictionary/core/network/network_info.dart';
import 'package:lao_dictionary/features/community/data/datasource/remote_datasource.dart';
import 'package:lao_dictionary/features/community/data/repositories/get_topics_repository_impl.dart';
import 'package:lao_dictionary/features/community/data/repositories/post_repository_impl.dart';
import 'package:lao_dictionary/features/community/domain/repositories/get_topics_repository.dart';
import 'package:lao_dictionary/features/community/domain/repositories/post_repository.dart';
import 'package:lao_dictionary/features/community/domain/usecases/comments.dart';
import 'package:lao_dictionary/features/community/domain/usecases/get_topics.dart';
import 'package:lao_dictionary/features/community/domain/usecases/post.dart';
import 'package:lao_dictionary/features/community/presentation/bloc/community_bloc.dart';
import 'package:lao_dictionary/features/dictionary/data/datasource/local_data_source.dart';
import 'package:lao_dictionary/features/dictionary/data/repositories/get_word_repository_imp.dart';
import 'package:lao_dictionary/features/dictionary/domain/repositories/get_words_repository.dart';
import 'package:lao_dictionary/features/dictionary/domain/usecases/get_words.dart';
import 'package:lao_dictionary/features/dictionary/presentation/bloc/bloc/dictionary_bloc.dart';

final sl = GetIt.instance;
Future<void> init() async{

  //! Community
   //feature
   sl.registerFactory(() => CommunityBloc(post: sl(),comment: sl(), getTopics: sl()));
   //usecase
   sl.registerLazySingleton(() => Post(repository: sl()));
    sl.registerLazySingleton(() => GetTopics(repository: sl()));
    sl.registerLazySingleton(() => Comment(repository: sl()));
   //repository
   sl.registerLazySingleton<PostRepository>(() => PostRepositoryImpl(remoteDataSource: sl(), netWorkInfo: sl()));
   sl.registerLazySingleton<GetTopicsRepository>(() => GetTopicsRepositoryImpl(remoteDataSource: sl()));
   // datasource
   sl.registerLazySingleton<RemoteDataSource>(() => RemoteDataSourceImpl(dioClient: sl()));
  //! Dictionary
  //bloc
   sl.registerFactory(() => DictionaryBloc(getWords: sl()));
   //usecase
   sl.registerLazySingleton(() => GetWords(getWordRepository: sl()));
   //repository
   sl.registerLazySingleton<IGetWordRepository>(() => GetWordRepositoryImp(datasource: sl()) );
   //datasource
   sl.registerLazySingleton(() => LocalDataSourceImpl());

  //! core
   sl.registerLazySingleton<NetworkInfo>(() => NetWorkInfoImpl(connectionCheck: sl()));
  //! external
  sl.registerLazySingleton(() => Dio());
  sl.registerLazySingleton(() => Connectivity());

}