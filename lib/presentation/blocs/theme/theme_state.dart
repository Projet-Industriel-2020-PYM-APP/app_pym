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
    final darkTheme = ThemeData(
      brightness: Brightness.dark,
      primaryColor: Colors.red[900],
      accentColor: Colors.redAccent[700],
      appBarTheme: const AppBarTheme(
        color: Colors.black,
      ),
    );
    return ThemeState(darkTheme, darkTheme, 'Dark');
  }

  factory ThemeState.light() {
    final theme = ThemeData(
      brightness: Brightness.light,
      primaryColor: Colors.red[900],
      accentColor: Colors.redAccent[700],
      appBarTheme: const AppBarTheme(
        color: Colors.white,
        textTheme: TextTheme(
          headline6: TextStyle(
            color: Colors.black,
            fontSize: 20,
            fontWeight: FontWeight.w500,
          ),
        ),
        iconTheme: IconThemeData(color: Colors.black),
        actionsIconTheme: IconThemeData(color: Colors.black),
      ),
    );
    return ThemeState(theme, theme, 'Light');
  }

  factory ThemeState.adaptive() {
    final darkTheme = ThemeData(
      brightness: Brightness.dark,
      primaryColor: Colors.red[900],
      accentColor: Colors.redAccent[700],
      appBarTheme: const AppBarTheme(
        color: Colors.black,
      ),
    );
    final theme = ThemeData(
      brightness: Brightness.light,
      primaryColor: Colors.red[900],
      accentColor: Colors.redAccent[700],
      appBarTheme: const AppBarTheme(
        color: Colors.white,
        textTheme: TextTheme(
          headline6: TextStyle(
            color: Colors.black,
            fontSize: 20,
            fontWeight: FontWeight.w500,
          ),
        ),
        iconTheme: IconThemeData(color: Colors.black),
        actionsIconTheme: IconThemeData(color: Colors.black),
      ),
    );
    return ThemeState(theme, darkTheme, 'Adaptive');
  }
}
