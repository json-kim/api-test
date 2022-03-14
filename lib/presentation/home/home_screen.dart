import 'dart:async';

import 'package:api_test/presentation/home/home_event.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import 'home_view_model.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  final _textEditingController = TextEditingController();
  StreamSubscription? _subscription;

  @override
  void initState() {
    Future.microtask(() {
      final viewModel = context.read<HomeViewModel>();

      viewModel.uiEventStream.listen((event) {
        event.when(snackBar: (message) {
          final snackBar = SnackBar(
            content: Text(message),
            behavior: SnackBarBehavior.floating,
          );

          ScaffoldMessenger.of(context)
            ..hideCurrentSnackBar()
            ..showSnackBar(snackBar);
        });
      });
    });
    super.initState();
  }

  @override
  void dispose() {
    _textEditingController.dispose();
    _subscription?.cancel();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    final viewModel = context.watch<HomeViewModel>();
    final state = viewModel.state;

    return Scaffold(
      appBar: AppBar(
        title: const Text('단어 검색'),
      ),
      body: Column(
        children: [
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Row(
              children: [
                Expanded(
                    child: TextFormField(
                  controller: _textEditingController,
                )),
                IconButton(
                    onPressed: () {
                      final query = _textEditingController.text;
                      if (query != '') {
                        print(query);
                        viewModel.onEvent(HomeEvent.search(query));
                      }
                    },
                    icon: const Icon(Icons.search)),
              ],
            ),
          ),
          Expanded(
              child: ListView(
            children: state.wordList
                .map((word) => ListTile(
                      title: Text(word.word),
                      subtitle: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(word.sense.definition),
                          Text(word.pos),
                        ],
                      ),
                    ))
                .toList(),
          ))
        ],
      ),
    );
  }
}
