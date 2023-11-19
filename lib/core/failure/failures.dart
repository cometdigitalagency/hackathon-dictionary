import 'package:equatable/equatable.dart';

abstract class Failure extends Equatable {
  
}

class ServerFailure extends Failure{
  @override
  // TODO: implement props
  List<Object?> get props => [];

}

class CacheFailure extends Failure {
  String message;
  CacheFailure({required this.message});
  @override
  // TODO: implement props
  List<Object?> get props => throw UnimplementedError();

}
class NetworkFailure extends Failure{
  String message;
  NetworkFailure({required this.message});
  @override
  // TODO: implement props
  List<Object?> get props => throw UnimplementedError();
}

class FormatFailure extends Failure{
  @override
  // TODO: implement props
  List<Object?> get props => throw UnimplementedError();

}


