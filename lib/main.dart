import 'package:flutter/material.dart';
import 'package:hive_flutter/hive_flutter.dart';
import 'package:provider/provider.dart';
import 'package:truth_dare_game/commons/commons_exports.dart';
import 'package:truth_dare_game/core/core_exports.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();

  // Hive
  await Hive.initFlutter();

  // Truth Dare Game
  await Hive.openBox(AppConstants.hiveDb);

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
