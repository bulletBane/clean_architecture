import 'package:clean_network/page/cubit/get_words_cubit.dart';
import 'package:connectivity/connectivity.dart';
import 'package:dio/dio.dart';
import 'package:get_it/get_it.dart';

import 'network_creator.dart';
import 'network_encoder.dart';
import 'network_executer.dart';

final injector = GetIt.instance;

void init() {
  injector.registerSingleton(Dio());
  injector.registerSingleton(NetworkCreator(injector()));
  injector.registerSingleton(NetworkDecoder());
  injector.registerSingleton(Connectivity());
  injector.registerSingleton(NetworkExecuter(
      connectivity: injector(),
      networkCreator: injector(),
      networkDecoder: injector()));
  injector.registerSingleton(
    GetWordsCubit(
      injector(),
    ),
  );
}
