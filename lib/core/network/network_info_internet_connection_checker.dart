import 'package:injectable/injectable.dart';
import 'package:internet_connection_checker/internet_connection_checker.dart';
import 'package:pile_of_fame/core/network/network_info.dart';

@Injectable(as: NetworkInfo)
class NetworkInfoInternetConnectionChecker implements NetworkInfo {
  final InternetConnectionChecker connectionChecker;

  NetworkInfoInternetConnectionChecker(this.connectionChecker);

  @override
  Future<bool> get isConnected async => connectionChecker.hasConnection;
}
