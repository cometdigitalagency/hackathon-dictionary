library search_package;

import 'dart:convert';
import 'package:flutter/services.dart';
import 'package:search_package/fixure.dart';
export 'package:search_package/fixure.dart';
class SuggestWord {
  List<String> searchWord<T>(String keywords){
    List<String> searchResult = [];
   
    final jsonData = Fixure.dataDictionar;

    jsonData.forEach((key, value) {
      if (key.toLowerCase() == keywords.toLowerCase()) {
        searchResult.add(key);
      }
    });

    jsonData.forEach((key, value) {
      if (key.toLowerCase().contains(keywords.toLowerCase())) {
        searchResult.add(key);
      }
    });

    jsonData.forEach((key, value) {
      if (key.toLowerCase().compareTo(keywords.toLowerCase()) <= 5) {
        searchResult.add(key);
      }
    });

    jsonData.forEach((key, value) {
      if (value.toString().toLowerCase().contains(keywords.toLowerCase())) {
        searchResult.add(value);
      }
    });

    
    return  searchResult;
  }
}
