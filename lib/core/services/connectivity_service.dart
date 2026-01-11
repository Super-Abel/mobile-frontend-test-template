import 'package:internet_connection_checker/internet_connection_checker.dart';

class ConnectivityService {
  final InternetConnectionChecker _connectionChecker;

  ConnectivityService({InternetConnectionChecker? connectionChecker})
      : _connectionChecker = connectionChecker ?? InternetConnectionChecker();

  Future<bool> hasConnection() async {
    return await _connectionChecker.hasConnection;
  }

  Stream<InternetConnectionStatus> get onStatusChange =>
      _connectionChecker.onStatusChange;
}
