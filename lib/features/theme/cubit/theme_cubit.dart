import 'dart:async';

import 'package:bloc/bloc.dart';
import 'package:ekokurniadi/core/shared/style.dart';
import 'package:equatable/equatable.dart';
import 'package:flutter/material.dart';

part 'theme_state.dart';

class ThemeCubit extends Cubit<ThemeState> {
  ThemeCubit() : super(ThemeState.initial());

  FutureOr<void> setTheme(bool light) async {
    if (light) {
      emit(state.copyWith(
        textBlackOrWhiteColor: Colors.black,
        themeMode: ThemeStateMode.light,
        primaryColor: Style.primaryColor,
        backgroundColor: Style.backgroundColor
      ));
    } else {
      emit(state.copyWith(
        textBlackOrWhiteColor: Colors.white,
        themeMode: ThemeStateMode.dark,
        primaryColor: Style.primaryColorDark,
        backgroundColor: Style.backgroundColorDark
      ));
    }
  }
}
