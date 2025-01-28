import 'dart:convert';

import 'package:projectbased/config/app_config.dart';
import 'package:http/http.dart' as http;

abstract class ServiceBase<T> {
  Future<T> call();

  Uri _getV1Url(String url) => Uri.parse('${AppConfig.baseUrl}/$url');

  Future<Map<String, dynamic>> get(String apiUrl , {String? token}) async {
    try {
      return _handleResponse(await MyReq(token).get(_getV1Url(apiUrl)));
    } catch (e) {
      throw Exception(e);
    }
  }

  Future<Map<String, dynamic>> post(
    String apiUrl, {
    Map<String, dynamic>? body,
    String? token,
  }) async {
    try {
      final response =
          await MyReq().post(_getV1Url(apiUrl), body: jsonEncode(body));
      return _handleResponse(response);
    } catch (e) {
      throw Exception(e);
    }
  }

  Map<String, dynamic> _handleResponse(http.Response response) {
    if (response.statusCode == 200) {
      return jsonDecode(response.body);
    } else {
      throw Exception();
    }
  }
}

class MyReq extends http.BaseClient {
final String? token;

MyReq([this.token]);

  @override
  Future<http.StreamedResponse> send(http.BaseRequest request) {
    if(token != null){
      request.headers['authorization'] = 'bearer $token';  
    }
    return request.send();
  }
}
