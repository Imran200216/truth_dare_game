import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:truth_dare_game/commons/commons_exports.dart';
import 'package:truth_dare_game/core/core_exports.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MultiProvider(
      providers: [
        // Game btn provider
        ChangeNotifierProvider(create: (context) => GameBtnProvider()),
      ],
      child: MaterialApp.router(
        debugShowCheckedModeBanner: false,
        title: 'Truth Dare Game',
        theme: ThemeData(),
        routerConfig: router,
      ),
    );
  }
}
