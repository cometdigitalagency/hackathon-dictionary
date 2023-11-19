import 'dart:io';

Future<String> fixure(String name) async=> await File('lib/core/assets/dictionary/$name.json').readAsStringSync();