import 'package:flutter/material.dart';
import 'package:news_app/provider/news_provider.dart';
import 'package:news_app/screen/home_page.dart';
import 'package:provider/provider.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MultiProvider(
      providers: [
        ChangeNotifierProvider(
          create: (_) {
            return NewsProvider();
          },
        ),
      ],
      child: MaterialApp(
        debugShowCheckedModeBanner: false,
        title: 'Flutter Demo',
        theme: ThemeData(
          appBarTheme: AppBarTheme(color: Colors.green),
          primarySwatch: Colors.blue,
        ),
        home: HomePage(),
      ),
    );
  }
}
