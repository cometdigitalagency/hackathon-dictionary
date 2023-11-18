import 'package:connectivity_plus/connectivity_plus.dart';
import 'package:dio/dio.dart';
import 'package:get_it/get_it.dart';
import 'package:lao_dictionary/core/network/network_info.dart';
import 'package:lao_dictionary/features/community/data/datasource/remote_datasource.dart';
import 'package:lao_dictionary/features/community/data/repositories/post_repository_impl.dart';
import 'package:lao_dictionary/features/community/domain/repositories/post_repository.dart';
import 'package:lao_dictionary/features/community/domain/usecases/comment.dart';
import 'package:lao_dictionary/features/community/domain/usecases/get_topics.dart';
import 'package:lao_dictionary/features/community/domain/usecases/post.dart';
import 'package:lao_dictionary/features/community/presentation/bloc/community_bloc.dart';

final sl = GetIt.instance;
Future<void> init() async{
   //feature
   sl.registerFactory(() => CommunityBloc(post: sl(), comment: sl(), getTopics: sl()));
   //usecase
   sl.registerLazySingleton(() => Post(repository: sl()));
   sl.registerLazySingleton(() => Comment(repository: sl()));
    sl.registerLazySingleton(() => GetTopics(repository: sl()));
   //repository
   sl.registerLazySingleton<PostRepository>(() => PostRepositoryImpl(remoteDataSource: sl(), netWorkInfo: sl()));
   // datasource
   sl.registerLazySingleton(() => RemoteDataSourceImpl(dioClient: sl()));

  //! core
   sl.registerLazySingleton<NetworkInfo>(() => NetWorkInfoImpl(connectionCheck: sl()));
  //! external
  sl.registerLazySingleton(() => Dio());
  sl.registerLazySingleton(() => Connectivity());

}