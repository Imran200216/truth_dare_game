import 'package:go_router/go_router.dart';
import 'package:truth_dare_game/features/add_truth_dare/view/add_truth_dare_view.dart';
import 'package:truth_dare_game/features/splash/splash_exports.dart';
import 'package:truth_dare_game/features/game_intro/game_intro_exports.dart';
import 'package:truth_dare_game/features/user_age/user_age_exports.dart';

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


  ],
);
