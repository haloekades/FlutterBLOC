import 'dart:convert';
import 'package:http/http.dart' as http;
import '../models/article.dart';

class NewsService {
  Future<List<Article>> fetchArticles() async {
    final response = await http.get(Uri.parse(
        'https://mocki.io/v1/e50c44b5-b073-4cae-a4fa-ad15121250af'));

    if (response.statusCode == 200) {
      final List articles = jsonDecode(response.body)['articles'];
      return articles.map((e) => Article.fromJson(e)).toList();
    } else {
      throw Exception('Failed to fetch news');
    }
  }
}
