import 'dart:convert';

import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:http/http.dart' as http;

import '../../configs/x_configs.dart';
import '../../models/x_models.dart';

class NewsRemoteData {
//
  //--Fetch News:
  //========================================================================
  Future<List<NewsModel>> fetchNewsData() async {
    var client = http.Client();
    final response = await client.get(
        Uri.parse("$BASE_URL_NEWS/everything?q=bitcoin&apiKey=$API_KEY_NEWS"));
    print(response.statusCode);
    if (response.statusCode == 200) {
      print('***fetchNewsData: OK');
      final List news = json.decode(response.body)['articles'];
      return news.map((e) => NewsModel.fromJson(e)).toList();
    } else {
      print('***fetchNewsData: error');
      throw Exception('fetchNewsData: error');
    }
  }
}

final newsApiProvider = Provider<NewsRemoteData>((ref) {
  return NewsRemoteData();
});
