// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:maingames_flutter_test/core/utils/network/network_info.dart';

class MockNetworkInfo implements NetworkInfo {
  final bool isConnectedMock;
  MockNetworkInfo({required this.isConnectedMock});
  @override
  Future<bool> get isConnected => Future.value(isConnectedMock);
}
