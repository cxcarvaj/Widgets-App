import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:widgets_app/config/theme/app_theme.dart';

final isDarkModeProvider = StateProvider((ref) => false);

final colorListProvider = Provider((ref) => colorList);

final selectedColorIndexProvider = StateProvider((ref) => 0);

final themeNotifierProvider =
    StateNotifierProvider<ThemeControllerNotifier, AppTheme>(
  (ref) => ThemeControllerNotifier(),
);

class ThemeControllerNotifier extends StateNotifier<AppTheme> {
  // This is the state, and the State is an instance of AppTheme
  ThemeControllerNotifier() : super(AppTheme());

  void toggleDarkMode() {
    state = state.copyWith(isDarkMode: !state.isDarkMode);
  }

  void updateSelectedColorIndex(int index) {
    state = state.copyWith(selectedColor: index);
  }
}
