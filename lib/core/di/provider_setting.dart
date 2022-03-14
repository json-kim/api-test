import 'package:api_test/data/data_source/remote/word_remote_data_source.dart';
import 'package:api_test/data/repository/word_repository_impl.dart';
import 'package:api_test/domain/repository/word_repository.dart';
import 'package:api_test/domain/usecase/search_word_use_case.dart';
import 'package:api_test/presentation/home/home_view_model.dart';
import 'package:provider/provider.dart';
import 'package:provider/single_child_widget.dart';

Future<List<SingleChildWidget>> getProviders() async {
  final List<SingleChildWidget> dataSources = [
    Provider(create: (context) => WordRemoteDataSource()),
  ];

  final List<SingleChildWidget> repositories = [
    ProxyProvider<WordRemoteDataSource, WordRepository>(
        update: (context, dataSource, _) => WordRepositoryImpl(dataSource)),
  ];

  final List<SingleChildWidget> useCases = [
    ProxyProvider<WordRepository, SearchWordUseCase>(
        update: (context, repository, _) => SearchWordUseCase(repository)),
  ];

  final List<SingleChildWidget> viewModels = [
    ChangeNotifierProvider(
        create: (context) => HomeViewModel(
              context.read<SearchWordUseCase>(),
            ))
  ];

  final List<SingleChildWidget> globalProviders = [
    ...dataSources,
    ...repositories,
    ...useCases,
    ...viewModels,
  ];

  return globalProviders;
}
