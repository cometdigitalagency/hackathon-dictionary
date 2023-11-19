// This is a basic Flutter widget test.
//
// To perform an interaction with a widget in your test, use the WidgetTester
// utility in the flutter_test package. For example, you can send tap and scroll
// gestures. You can also use WidgetTester to find child widgets in the widget
// tree, read text, and verify that the values of widget properties are correct.

import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';

import 'package:lao_dictionary/main.dart';
import 'package:search_package/suggest_word.dart';

void main() {
  test("test", () {
    SuggestWord suggestWord  = SuggestWord();
    final result = suggestWord.searchWord("ກ");
    print(result);
  });
}
