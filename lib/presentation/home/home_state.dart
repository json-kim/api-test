import 'package:api_test/domain/model/word.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'home_state.freezed.dart';

@freezed
class HomeState with _$HomeState {
  const factory HomeState({
    @Default(false) isLoading,
    @Default([]) List<Word> wordList,
  }) = _HomeState;
}
