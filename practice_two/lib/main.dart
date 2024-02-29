import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:practice_two/navigation_bar.dart';
import 'package:practice_two/screen/home.dart';

void main() {
  runApp(ProviderScope(child: const MyApp()));
}

class MyApp extends ConsumerWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return MaterialApp(
        theme: ThemeData(
            appBarTheme: AppBarTheme(color: Color.fromARGB(191, 166, 58, 161))),
        home: Scaffold(
          appBar: AppBar(
            title: Text('Demo'),
          ),
          body: Navigation_Bar(),
        ));
  }
}
