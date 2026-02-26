import 'package:dio/dio.dart';

class Dioclient {
  static Dio create() {
    return Dio(
      BaseOptions(
        baseUrl: "https://www.intoxianime.com/wp-json",
        connectTimeout: Duration(seconds: 5),
        receiveTimeout: Duration(seconds: 5),
      ),
    );
  }
}
