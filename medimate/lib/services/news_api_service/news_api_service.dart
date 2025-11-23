import 'dart:developer';

import 'package:dio/dio.dart';
import 'package:flutter_dotenv/flutter_dotenv.dart';
import 'package:medimate/services/dio_client.dart';
import 'package:medimate/services/news_api_service/news_api_model.dart';

class NewsApiService {
  
  Future<List<NewsApiModel>> fetchHealthNews() async {
  final dio =await DioClient.getInstance();
  final apiKey = dotenv.env['NEWS_API_KEY'];
  try {
    final response =await dio.get(
      "https://gnews.io/api/v4/search?q=health&apikey=$apiKey",
      options: Options(extra: {
        'cache_policy': "CachePolicy.forceChache", // try cache before API
      }),
    );
    List<dynamic> data=response.data["articles"];
    return data.map((e) => NewsApiModel.fromJson(e),).toList();
  } on DioException catch (e) {
    throw e.message ?? "Something went wrong.";
  }
}
}