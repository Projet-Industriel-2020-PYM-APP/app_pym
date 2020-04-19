part of 'theme_bloc.dart';

@freezed
abstract class ThemeState implements _$ThemeState {
  const factory ThemeState(
    ThemeData themeData,
    ThemeData darkThemeData,
    String value,
  ) = _ThemeState;

  const ThemeState._();

  factory ThemeState.dark() {
    final darkTheme = AppTheme.darkTheme;
    return ThemeState(darkTheme, darkTheme, 'Dark');
  }

  factory ThemeState.light() {
    final theme = AppTheme.lightTheme;
    return ThemeState(theme, theme, 'Light');
  }

  factory ThemeState.adaptive() {
    final darkTheme = AppTheme.darkTheme;
    final theme = AppTheme.lightTheme;
    return ThemeState(theme, darkTheme, 'Adaptive');
  }
}
