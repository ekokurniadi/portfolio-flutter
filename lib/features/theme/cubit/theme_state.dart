part of 'theme_cubit.dart';

enum ThemeStateMode { light, dark }

class ThemeState extends Equatable {
  const ThemeState({
    required this.primaryColor,
    required this.textBlackOrWhiteColor,
    required this.themeMode,
    required this.backgroundColor,
  });

  final Color primaryColor;
  final Color backgroundColor;
  final Color textBlackOrWhiteColor;
  final ThemeStateMode themeMode;

  ThemeState copyWith({
    Color? primaryColor,
    Color? textBlackOrWhiteColor,
    ThemeStateMode? themeMode,
    Color? backgroundColor,
  }) {
    return ThemeState(
      primaryColor: primaryColor ?? this.primaryColor,
      textBlackOrWhiteColor:
          textBlackOrWhiteColor ?? this.textBlackOrWhiteColor,
      themeMode: themeMode ?? this.themeMode,
      backgroundColor: backgroundColor ?? this.backgroundColor,
    );
  }

  factory ThemeState.initial() {
    return ThemeState(
      primaryColor: Style.primaryColor,
      textBlackOrWhiteColor: Colors.black,
      themeMode: ThemeStateMode.light,
      backgroundColor: Style.backgroundColor,
    );
  }

  @override
  List<Object> get props => [
        primaryColor,
        textBlackOrWhiteColor,
        themeMode,
        backgroundColor,
      ];
}
