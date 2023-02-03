part of 'main_page_cubit.dart';

/// Main page state
class MainPageState extends Equatable {
  /// Field for current background color
  final Color currentColor;

  /// Field for toggling random alpha
  /// in color generation
  final bool randomAlpha;

  /// Field for toggling red color
  /// in color generation
  final bool redColor;

  /// Field for toggling green color
  /// in color generation
  final bool greenColor;

  /// Field for toggling blue color
  /// in color generation
  final bool blueColor;

  @override
  List<Object> get props => [
        currentColor,
        randomAlpha,
        redColor,
        greenColor,
        blueColor,
      ];

  /// Main page state constructor
  const MainPageState({
    required this.currentColor,
    required this.randomAlpha,
    required this.redColor,
    required this.greenColor,
    required this.blueColor,
  });

  /// Copy with method for 
  /// Main Page state
  MainPageState copyWith({
    Color? currentColor,
    bool? randomAlpha,
    bool? redColor,
    bool? greenColor,
    bool? blueColor,
  }) {
    return MainPageState(
      currentColor: currentColor ?? this.currentColor,
      randomAlpha: randomAlpha ?? this.randomAlpha,
      redColor: redColor ?? this.redColor,
      greenColor: greenColor ?? this.greenColor,
      blueColor: blueColor ?? this.blueColor,
    );
  }
}
