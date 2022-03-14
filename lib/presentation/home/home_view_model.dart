import 'dart:async';

import 'package:api_test/domain/usecase/search_word_use_case.dart';
import 'package:flutter/material.dart';

import 'home_state.dart';
import 'home_event.dart';
import 'home_ui_event.dart';

class HomeViewModel with ChangeNotifier {
  final SearchWordUseCase _searchWordUseCase;

  final _streamController = StreamController<HomeUiEvent>.broadcast();
  Stream<HomeUiEvent> get uiEventStream => _streamController.stream;

  HomeState _state = HomeState();
  HomeState get state => _state;

  HomeViewModel(
    this._searchWordUseCase,
  );

  @override
  void dispose() {
    _streamController.close();
    super.dispose();
  }

  void onEvent(HomeEvent event) {
    event.when(search: _search);
  }

  Future<void> _search(String query) async {
    _state = _state.copyWith(isLoading: true);
    notifyListeners();
    print('search view model');
    final result = await _searchWordUseCase(query);

    result.when(
      success: (wordList) {
        _state = _state.copyWith(wordList: wordList);
      },
      error: (message) {
        _streamController.add(const HomeUiEvent.snackBar('검색에 실패했습니다.'));
      },
    );

    _state = _state.copyWith(isLoading: false);
    notifyListeners();
  }
}
