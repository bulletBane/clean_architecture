import 'package:connectivity/connectivity.dart';
import 'package:dio/dio.dart';

import 'clients/clients.dart';
import 'errors/networks_error.dart';
import 'models/base_network_model.dart';
import 'network_creator.dart';
import 'network_options.dart';
import 'result/result.dart';
import 'network_encoder.dart';

class NetworkExecuter {
  final Connectivity connectivity;
  final NetworkCreator networkCreator;
  final NetworkDecoder networkDecoder;

  bool debugMode = true;

  NetworkExecuter(
      {required this.connectivity,
      required this.networkCreator,
      required this.networkDecoder});

  Future<Result<K, NetworkError>> execute<T extends BaseNetworkModel, K>(
      {required PlaceHolderClient route,
      required T responseType,
      NetworkOptions? options}) async {
    if (debugMode) print(route);
    final connectivityResult = await connectivity.checkConnectivity();
    if (connectivityResult != ConnectivityResult.none) {
      try {
        var response =
            await networkCreator.request(route: route, options: options);
        var data = networkDecoder.decode<T, K>(
            response: response, responseType: responseType);
        return Result.success(data);

        // NETWORK ERROR
      } on DioError catch (diorError) {
        if (debugMode)
          print("$route => ${NetworkError.request(error: diorError)}");
        return Result.failure(NetworkError.request(error: diorError));

        // TYPE ERROR
      } on TypeError catch (e) {
        if (debugMode)
          print("$route => ${NetworkError.type(error: e.toString())}");
        return Result.failure(NetworkError.type(error: e.toString()));
      }

      // No Internet Connection
    } else {
      if (debugMode) {
        print(NetworkError.connectivity(message: 'No Internet Connection'));
      }
      return Result.failure(
          NetworkError.connectivity(message: 'No Internet Connection'));
    }
  }
}
