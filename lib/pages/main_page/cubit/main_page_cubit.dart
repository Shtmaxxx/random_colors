import 'dart:math';

import 'package:equatable/equatable.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

part 'main_page_state.dart';

/// Main page cubit
class MainPageCubit extends Cubit<MainPageState> {
  /// Main page cubit constructor
  MainPageCubit()
      : super(
          const MainPageState(
            currentColor: Colors.white,
            randomAlpha: true,
            redColor: true,
            greenColor: true,
            blueColor: true,
          ),
        );

  /// Method for generating a random color
  void generateColor({
    required bool randomAlpha,
    required bool redColor,
    required bool greenColor,
    required bool blueColor,
  }) {
    final Color generatedColor = Color.fromARGB(
      randomAlpha ? Random().nextInt(256) : 255,
      redColor ? Random().nextInt(256) : 0,
      greenColor ? Random().nextInt(256) : 0,
      blueColor ? Random().nextInt(256) : 0,
    );

    emit(
      state.copyWith(currentColor: generatedColor),
    );
  }

  /// Method for toggling random alpha
  void toggleRandomAlpha({required bool value}) => emit(
        state.copyWith(randomAlpha: value),
      );

  /// Method for toggling red color
  void toggleRedColor({required bool value}) => emit(
        state.copyWith(redColor: value),
      );

  /// Method for toggling green color
  void toggleGreenColor({required bool value}) => emit(
        state.copyWith(greenColor: value),
      );

  /// Method for toggling blue color
  void toggleBlueColor({required bool value}) => emit(
        state.copyWith(blueColor: value),
      );
}
