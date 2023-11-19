import 'package:equatable/equatable.dart';

class Word extends Equatable{
 String word;
 String meaning;

 Word({required this.word, required this.meaning});
 
  @override
  // TODO: implement props
  List<Object?> get props => throw UnimplementedError();
}