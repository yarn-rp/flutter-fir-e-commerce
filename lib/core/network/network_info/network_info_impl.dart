import 'package:flutter_fir_e_commerce/core/network/network_info/network_info.dart';
import 'package:internet_connection_checker/internet_connection_checker.dart';

class NetworkInfoImpl implements NetworkInfo {
  NetworkInfoImpl(this.connectionChecker);

  final InternetConnectionChecker connectionChecker;

  @override
  Future<bool> get isConnected => connectionChecker.hasConnection;
}
