import 'package:api_test/core/result/result.dart';
import 'package:api_test/domain/model/word.dart';
import 'package:api_test/domain/repository/word_repository.dart';

class SearchWordUseCase {
  final WordRepository _repository;

  SearchWordUseCase(this._repository);

  Future<Result<List<Word>>> call(String query) async {
    final result = await _repository.getWordWithQuery(query);

    return result.when(
      success: (wordList) {
        return Result.success(wordList);
      },
      error: (message) {
        return Result.error(message);
      },
    );
  }
}
