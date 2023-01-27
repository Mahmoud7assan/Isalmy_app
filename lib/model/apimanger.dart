import 'dart:convert';

import 'package:flutter_app_c7/model/RadioSources.dart';
import 'package:flutter_app_c7/model/sourcesResponse.dart';
import 'package:http/http.dart' as http;

class ApiManger {
  static String base = 'api.alquran.cloud';
  static String base2 = 'mp3quran.net';

  static Future<SourcesResponse> getSource() async {
    try {
      var url = Uri.http(base, '/v1/surah');
      var response = await http.get(url);
      var bodyresponse = response.body;
      var json = jsonDecode(bodyresponse);
      var sourcesResponse = SourcesResponse.fromJson(json);
      print(sourcesResponse);
      return sourcesResponse;
    } catch (e) {
      print(e);
      throw e;
    }
  }

  //https://mp3quran.net/api/v3/radios
  static Future<RadioSources> getRadio() async {
    try {
      var url = Uri.https(base2, '/api/v3/radios');
      var response = await http.get(url);
      var bodyresponse = response.body;
      var json = jsonDecode(bodyresponse);
      var radioSource = RadioSources.fromJson(json);
      return radioSource;
    } catch (e) {
      throw e;
    }
  }
}
