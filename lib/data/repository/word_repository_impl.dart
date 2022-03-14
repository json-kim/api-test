import 'package:api_test/core/result/result.dart';
import 'package:api_test/data/data_source/remote/word_remote_data_source.dart';
import 'package:api_test/domain/model/word.dart';
import 'package:api_test/domain/repository/word_repository.dart';

class WordRepositoryImpl with WordRepository {
  final WordRemoteDataSource _dataSource;

  WordRepositoryImpl(this._dataSource);

  @override
  Future<Result<List<Word>>> getWordWithQuery(String query) async {
    final result = await _dataSource.getWordList(query);

    return result.when(
      success: (getResult) {
        return Result.success(getResult);
      },
      error: (message) {
        return Result.error(message);
      },
    );
  }
}
