import 'package:api_test/core/result/result.dart';
import 'package:api_test/domain/model/word.dart';

abstract class WordRepository {
  Future<Result<List<Word>>> getWordWithQuery(String query);
}
