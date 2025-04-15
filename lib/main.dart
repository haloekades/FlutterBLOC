import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'blocs/news_bloc.dart';
import 'services/news_service.dart';
import 'pages/news_list_page.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  final newsService = NewsService();

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'News BLoC App',
      home: BlocProvider(
        create: (_) => NewsBloc(newsService),
        child: NewsListPage(),
      ),
    );
  }
}
