import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:hive_flutter/hive_flutter.dart';
import 'package:truth_dare_game/core/core_exports.dart';
import 'package:truth_dare_game/features/add_players/view_models/bloc/players_bloc.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();

  // Initialize Hive
  await Hive.initFlutter();

  // Use FutureBuilder to wait for the box to be opened
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return FutureBuilder(
      future: Hive.openBox(AppConstants.hiveDb), // Open the Hive box
      builder: (context, snapshot) {
        // Show a loading indicator while the box is being opened
        if (snapshot.connectionState == ConnectionState.waiting) {
          return const MaterialApp(
            home: Scaffold(body: Center(child: CircularProgressIndicator())),
          );
        }

        // If the box is ready, pass it to the PlayersBloc
        if (snapshot.connectionState == ConnectionState.done) {
          final box = snapshot.data as Box;

          return MultiBlocProvider(
            providers: [
              // Players Bloc
              BlocProvider(create: (context) => PlayersBloc(box)..add(LoadPlayers())),
            ],
            child: MaterialApp.router(
              debugShowCheckedModeBanner: false,
              title: 'Truth Dare Game',
              theme: ThemeData(),
              routerConfig: router,
            ),
          );
        }

        // In case of error, display an error message
        return const MaterialApp(
          home: Scaffold(body: Center(child: Text("Failed to load data"))),
        );
      },
    );
  }
}
