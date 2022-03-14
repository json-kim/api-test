import 'dart:convert';

import 'package:api_test/core/result/result.dart';
import 'package:api_test/core/utils/key.dart';
import 'package:api_test/domain/model/word.dart';
import 'package:http/http.dart' as http;

class WordRemoteDataSource {
  Future<Result<List<Word>>> getWordList(String query) async {
    final uri = Uri.parse('$apiBaseUrl?key=$apiKey&req_type=json&q=$query');

    try {
      final result = await http.get(uri);

      if (result.statusCode != 200) {
        return Result.error(
            '$runtimeType.getWordList() : status Code = ${result.statusCode}');
      }

      final jsonResult = jsonDecode(result.body);
      final List jsonItems = jsonResult['channel']['item'];
      final wordList = jsonItems.map((json) => Word.fromJson(json)).toList();

      return Result.success(wordList);
    } catch (e) {
      return Result.error('$runtimeType.getWordList() : $e');
    }
  }
}
