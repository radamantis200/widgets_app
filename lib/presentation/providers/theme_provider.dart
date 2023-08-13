import 'package:flutter/widgets.dart';

import 'package:widgets_app/config/theme/app_theme.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';
part 'theme_provider.g.dart';

@riverpod
class Theme extends _$Theme {
  @override
  bool build() => false;

  void voidChange() {
    state = !state;
  }
}

@riverpod
class ThemeNotifier extends _$ThemeNotifier {
  @override
  AppTheme build() {
    return AppTheme();
  }

  void toogleDarkMode() {
    state = state.copyWith(isDarkMode: !state.isDarkMode);
  }

  void changeColorIndex(int colorIndex) {
    state = state.copyWith(seletectColor: colorIndex);
  }
}

@riverpod
List<Color> colorList(ColorListRef ref) => listColors;
