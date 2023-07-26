import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:search_bar_with_provider_api/pages/home_page.dart';
import 'package:search_bar_with_provider_api/providers/pets_provider.dart';

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return ChangeNotifierProvider(
      create: (context) => PetsProvider(),
      child: MaterialApp(
        title: 'Provider API Calls',
        theme: ThemeData(
          primarySwatch: Colors.blue,
        ),
        debugShowCheckedModeBanner: false,
        home: const HomePage(),
      ),
    );
  }
}

void main() {
  runApp(const MyApp());
}
