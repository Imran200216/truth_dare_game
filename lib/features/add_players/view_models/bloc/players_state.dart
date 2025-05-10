part of 'players_bloc.dart';

sealed class PlayersState extends Equatable {
  const PlayersState();
}

final class PlayersInitial extends PlayersState {
  @override
  List<Object> get props => [];
}

// Player Loading State
final class PlayersLoading extends PlayersState {
  @override
  List<Object> get props => [];
}

// Player Loaded State
final class PlayersLoaded extends PlayersState {
  final List<String> players;

  const PlayersLoaded(this.players);

  @override
  List<Object> get props => [];
}
