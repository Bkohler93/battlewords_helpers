import 'dart:io';
import 'package:path/path.dart' as path;
import 'package:valid_word_database/word_model.dart';
import 'package:valid_word_database/objectbox.g.dart';
import 'dart:convert';
import 'dart:math';

Future<void> main(List<String> arguments) async {
  final store = openStore();

  final wordBox = store.box<Word>();

  final query = (wordBox.query(Word_.length.equals(3))).build();
  final results = query.find();

  print(results[Random().nextInt(results.length - 1)]);

  store.close();
}
