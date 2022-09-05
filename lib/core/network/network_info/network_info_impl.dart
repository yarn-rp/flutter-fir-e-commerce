import 'package:flutter_fir_e_commerce/core/network/network_info/network_info.dart';
import 'package:flutter_fir_e_commerce/external/internet_connection_checker/internet_connection_checker_module.dart';
import 'package:injectable/injectable.dart';
import 'package:internet_connection_checker/internet_connection_checker.dart';

@Singleton(as: NetworkInfo)
class NetworkInfoImpl implements NetworkInfo {
  NetworkInfoImpl(this.connectionChecker);

  final ConnectionCheckerModule connectionChecker;

  @override
  Future<bool> get isConnected =>
      connectionChecker.connectionChecker.hasConnection;
}
