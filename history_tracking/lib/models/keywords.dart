import 'package:hive/hive.dart';
part 'keywords.g.dart';

@HiveType(typeId: 1)
class  Keywords{

  @HiveField(0)
  String keywords;

  @HiveField(1)
  DateTime createAt;

  @HiveField(2)
  int count;

  Keywords({required this.keywords, required this.createAt, required this.count});
}