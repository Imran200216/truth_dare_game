import 'package:go_router/go_router.dart';
import 'package:truth_dare_game/features/add_players/add_players_exports.dart';
import 'package:truth_dare_game/features/splash/splash_exports.dart';
import 'package:truth_dare_game/features/game_intro/game_intro_exports.dart';
import 'package:truth_dare_game/features/user_age/user_age_exports.dart';
import 'package:truth_dare_game/features/add_truth_dare/add_truth_dare_exports.dart';
import 'package:truth_dare_game/features/home/home_exports.dart';
import 'package:truth_dare_game/features/game_collections/game_collections_exports.dart';

final GoRouter router = GoRouter(
  initialLocation: '/',

  routes: [
    // splash view
    GoRoute(
      path: '/',
      name: 'splash',
      builder: (context, state) => const SplashView(),
    ),

    // game intro view
    GoRoute(
      path: '/gameIntro',
      name: 'gameIntro',
      builder: (context, state) => const GameIntroView(),
    ),

    // user age  view
    GoRoute(
      path: '/userAge',
      name: 'userAge',
      builder: (context, state) => const UserAgeView(),
    ),

    // add truth dare view
    GoRoute(
      path: '/addTruthDare',
      name: 'addTruthDare',
      builder: (context, state) => const AddTruthDareView(),
    ),

    // add players view
    GoRoute(
      path: '/addPlayers',
      name: 'addPlayers',
      builder: (context, state) => const AddPlayersView(),
    ),

    // home view
    GoRoute(
      path: '/home',
      name: 'home',
      builder: (context, state) => const HomeView(),
    ),

    // game collections view
    GoRoute(
      path: '/gameCollections',
      name: 'gameCollections',
      builder: (context, state) => const GameCollectionsView(),
    ),
  ],
);
