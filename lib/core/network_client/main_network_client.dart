import 'package:dio/dio.dart';
import 'package:library_web/core/network_client/base_network_client.dart';

class MainNetworkClient extends BaseNetworkClient {
  MainNetworkClient(Dio client) : super(client);
}
