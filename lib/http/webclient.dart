
import 'package:http/http.dart' as http;
import 'dart:async';
import 'dart:convert';

import 'package:http/http.dart';
import 'package:http_interceptor/http_interceptor.dart';

class LoggingInterceptor implements InterceptorContract {
  @override
  Future<RequestData> interceptRequest({RequestData data}) async {
    print(data);
    return data;
  }

  @override
  Future<ResponseData> interceptResponse({ResponseData data}) async {
      print(data);
      return data;
  }
}

void findthishit() async{
  final url = 'http://192.168.68.114:8080/transactions';
  final response = await get(Uri.parse(url));
  final jsonData = jsonDecode(response.body) as List;
  print(jsonData);
}

