library history_tracking;

import 'dart:io';

import 'package:history_tracking/models/keywords.dart';
import 'package:hive/hive.dart';

/// A Calculator.
class HistoryTracking {
  HistoryTracking();
 


  Future<void> storeKeybord(Keywords params) async {
    String path;  path = Directory.current.path;
    Hive
      ..init(path)
      ..registerAdapter(KeywordsAdapter());
    var box = await Hive.openBox("history_track");
    List<Keywords> keywords = box.values.toList() as List<Keywords>;

    Keywords data = keywords.firstWhere((element) =>
        element.toString().toLowerCase() == params.keywords.toLowerCase());
    if (data != null) {
      box.put(data.keywords, data.count + 1);
    }

    await box.add(params);
  }

  Future<List<Keywords>> FreuentlyKeywords() async {
       String path;  path = Directory.current.path;
    Hive
      ..init(path)
      ..registerAdapter(KeywordsAdapter());
    var box = Hive.box('history_track');
    List<Keywords> historySearch = box.values.toList() as List<Keywords>;
    historySearch.sort((a, b) => b.count.compareTo(a.count));

    return historySearch.toList();
  }
}
