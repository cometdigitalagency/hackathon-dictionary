import 'package:connectivity_plus/connectivity_plus.dart';

import '../enums/network_type.dart';

abstract class NetworkInfo{
  Future<NetworkType> get isConnected;
}


class NetWorkInfoImpl implements NetworkInfo{
  Connectivity connectionCheck;

  NetWorkInfoImpl({required this.connectionCheck});
  @override
  // TODO: implement isConnect
  Future<NetworkType> get isConnected async{
    switch(await connectionCheck.checkConnectivity()){
      // ignore: constant_pattern_never_matches_value_type
      case ConnectivityResult.mobile:
       return NetworkType.IsConnect;
      // ignore: constant_pattern_never_matches_value_type
      case ConnectivityResult.wifi:
       return NetworkType.IsConnect;
      // ignore: constant_pattern_never_matches_value_type
      case ConnectivityResult.ethernet:
        return NetworkType.IsConnect;
      // ignore: constant_pattern_never_matches_value_type
      case ConnectivityResult.none:
        return NetworkType.NotConnect;
      default:
        return NetworkType.NotConnect;
    }
  }

}