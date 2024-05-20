import 'package:equatable/equatable.dart';

class MainPageState extends Equatable {

  final AppState appState;

  const MainPageState(this.appState);

  @override
  List<Object?> get props => [appState];
}

enum AppState {
  fiveDivideFourMenu,
  gameVsYou,
  chooseProgram,
  contacts,
}
