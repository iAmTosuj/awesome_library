import 'package:dio/dio.dart';

abstract class BaseNetworkClient {
  final Dio client;

  BaseNetworkClient(this.client);
}
