import 'dart:io';

import 'package:dio/dio.dart';

import 'clients/clients.dart';
import 'network_options.dart';

class NetworkCreator {
  final Dio dio;

  NetworkCreator(this.dio);

  Future<Response> request(
      {required PlaceHolderClient route, NetworkOptions? options}) {
    return dio.fetch(RequestOptions(
        baseUrl: route.baseURL,
        method: route.method,
        path: route.path,
        queryParameters: route.queryParameters,
        data: route.body,
        onReceiveProgress: options?.onReceiveProgress,
        validateStatus: (statusCode) => (statusCode! >= HttpStatus.ok &&
            statusCode <= HttpStatus.multipleChoices)));
  }
}
