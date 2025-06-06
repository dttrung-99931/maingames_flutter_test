import 'package:easy_localization/easy_localization.dart';

import '../utils/log.dart';
import 'map_message.dart';

class Failure {
  String msg;
  String displayMsg;

  Failure([this.msg = 'no failure message']) : displayMsg = (mapMessage[msg] ?? msg).tr();

  void log({StackTrace? moreDetailedStackTrace}) {
    loge('  Error');
    loge('    $runtimeType $msg');

    // Log calling method
    List<String> stackTraces = (moreDetailedStackTrace ?? StackTrace.current).toString().split('\n');
    loge('    ${stackTraces[0]}');
    loge('    ${stackTraces[1]}');
  }
}

class NetworkFailure extends Failure {
  NetworkFailure([String? msg]) : super(msg = msg ?? 'Lỗi kết nối');
}

class ServerError extends Failure {
  final int statusCode;
  ServerError({
    required this.statusCode,
    String msg = 'server error',
  }) : super(msg);
}

// unexpected error
class UnexpectedFailure extends Failure {
  UnexpectedFailure() : super('UnexpectedFailure');
}
// class UnExcepected extends Failure {}

class ThumbnailImageFailure extends Failure {
  ThumbnailImageFailure(super.msg) : super();
}
