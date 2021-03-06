import 'dart:async';

import 'package:app_pym/core/theme.dart';
import 'package:bloc/bloc.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:shared_preferences/shared_preferences.dart';

part 'theme_bloc.freezed.dart';
part 'theme_event.dart';
part 'theme_state.dart';

class ThemeBloc extends Bloc<ThemeEvent, ThemeState> {
  final SharedPreferences prefs;
  final BuildContext context;

  ThemeBloc(this.context, {@required this.prefs});

  @override
  ThemeState get initialState => _getInitialState();

  @override
  Stream<ThemeState> mapEventToState(
    ThemeEvent event,
  ) async* {
    yield* event.when(
      toDark: () async* {
        await prefs.setString('initial_theme', 'Dark');
        yield ThemeState.dark();
      },
      toLight: () async* {
        await prefs.setString('initial_theme', 'Light');
        yield ThemeState.light();
      },
      toAdaptive: () async* {
        await prefs.setString('initial_theme', 'Adaptive');
        yield ThemeState.adaptive();
      },
    );
  }

  ThemeState _getInitialState() {
    final initialTheme = prefs.getString('initial_theme');
    switch (initialTheme) {
      case 'Dark':
        return ThemeState.dark();
      case 'Light':
        return ThemeState.light();
      case 'Adaptive':
        return ThemeState.adaptive();
      default:
        add(const ThemeEvent.toAdaptive());
        return ThemeState.adaptive();
    }
  }
}
