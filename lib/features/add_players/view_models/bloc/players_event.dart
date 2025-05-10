part of 'players_bloc.dart';

sealed class PlayersEvent extends Equatable {
  const PlayersEvent();
}

// Load Players event
class LoadPlayers extends PlayersEvent {
  @override
  List<Object> get props => [];
}

// Add Players event
class AddPlayer extends PlayersEvent {
  final String name;

  const AddPlayer(this.name);

  @override
  List<Object> get props => [name];
}

// Remove Player event
class RemovePlayer extends PlayersEvent {
  final String name;

  const RemovePlayer(this.name);

  @override
  List<Object> get props => [name];
}
