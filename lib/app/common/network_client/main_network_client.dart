import 'package:dio/dio.dart';
import 'package:library_web/app/common/network_client/base_network_client.dart';

class MainNetworkClient extends BaseNetworkClient {
  MainNetworkClient() : super(Dio(BaseOptions(baseUrl: 'http://10.0.0.2:1313/')));
}
