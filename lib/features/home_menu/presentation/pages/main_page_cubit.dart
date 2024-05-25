import 'package:camps_program/features/home_menu/presentation/pages/main_page_state.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class MainPageCubit extends Cubit<MainPageState> {
  MainPageCubit(super.initialState);

  void openChooseProgramPage() {
    emit(const MainPageState(AppState.chooseProgram));
  }

  void openFiveDivideFourCampPage() {
    emit(const MainPageState(AppState.fiveDivideFourMenu));
  }

  void openGameVsYouCampPage() {
    emit(const MainPageState(AppState.gameVsYou));
  }
}
