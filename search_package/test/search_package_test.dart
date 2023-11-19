import 'dart:convert';

import 'package:flutter_test/flutter_test.dart';
import 'package:search_package/fixure.dart';
import 'package:search_package/suggest_word.dart';

void main() {
  group('test search with differenct type of data', () {
    test('test check search result', () {
      SuggestWord testSearch = SuggestWord();
      final jsonString = fixure('dictionaly.json');
      final result = testSearch.searchWord("");
      expect(List<String>, result);
    });

    test('test check search result', () {
      SuggestWord testSearch = SuggestWord();
      final jsonString = fixure('dictionaly.json');

      final jsonData = json.decode(jsonString);
      final result = testSearch.searchWord("");
   
    });
  });
}
