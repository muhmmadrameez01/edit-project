import 'dart:convert' show json;

import 'package:http/http.dart' as http;
import 'package:logger/logger.dart';

class NetworkHandler {
  String baseurl = "https://gifted-baseball-cap-wasp.cyclic.app";
  var log = Logger();

  Future get(String url) async {
    url = formater(url);

    var response = await http.get(
      Uri.parse(url),
    );
    if (response.statusCode == 200 || response.statusCode == 201) {
      log.i(response.body);
      return json.decode(response.body);
    }
  }

  Future<http.Response> post(String url, Map<String, String> body) async {
    url = formater(url);
    log.d(body);

    var response = await http.post(
      Uri.parse(url),
      headers: {"Content-Type": "application/json"},
      body: json.encode(body),
    );
    return response;
  }

  String formater(String url) {
    return baseurl + url;
  }
}
