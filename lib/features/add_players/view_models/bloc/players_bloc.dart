import 'package:bloc/bloc.dart';
import 'package:equatable/equatable.dart';
import 'package:hive_flutter/hive_flutter.dart';

part 'players_event.dart';
part 'players_state.dart';

class PlayersBloc extends Bloc<PlayersEvent, PlayersState> {
  final Box box;

  PlayersBloc(this.box) : super(PlayersInitial()) {
    //  On Load Plyers
    on<LoadPlayers>((event, emit) {
      final players = box.get('gamePlayers', defaultValue: []).cast<String>();
      emit(PlayersLoaded(players));
    });

    // Add Players
    on<AddPlayer>((event, emit) {
      final players = box.get('gamePlayers', defaultValue: []).cast<String>();
      if (!players.contains(event.name) && players.length < 4) {
        players.add(event.name);
        box.put('gamePlayers', players);
        emit(PlayersLoaded(List.from(players)));
      }
    });

    // Remove Players
    on<RemovePlayer>((event, emit) {
      final players = box.get('gamePlayers', defaultValue: []).cast<String>();
      players.remove(event.name);
      box.put('gamePlayers', players);
      emit(PlayersLoaded(List.from(players)));
    });
  }
}
