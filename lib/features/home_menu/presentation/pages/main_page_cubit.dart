import 'package:flutter_bloc/flutter_bloc.dart';

import 'main_page_state.dart';

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

  void openSkyLandCampPage() {
    emit(const MainPageState(AppState.skyLand));
  }
}
