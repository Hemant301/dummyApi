import 'package:flutter/material.dart';
import 'dart:convert' as convert;

import 'package:http/http.dart' as http;
import 'package:newapp/feature/presentation/news_page.dart';
import 'package:newapp/feature/presentation/news_page.dart';

import 'home/presentation/notificationScreen.dart';

Future<void> main() async {
  WidgetsFlutterBinding.ensureInitialized();
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Material App',
      home: Builder(builder: (context) {
        return Scaffold(
          appBar: AppBar(
            title: Text('Material App Bar'),
          ),
          body: Center(
            child: ElevatedButton(
                onPressed: () => Navigator.of(context).push(
                      MaterialPageRoute<dynamic>(
                          builder: (BuildContext context) =>
                              NotificationScrren.createProvider(context)),
                    ),
                child: const Text('Get Data')),
          ),
        );
      }),
    );
  }
}
