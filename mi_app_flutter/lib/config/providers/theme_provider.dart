import 'package:flutter_riverpod/flutter_riverpod.dart';

// Provider para el modo oscuro
final isDarkModeProvider = NotifierProvider<IsDarkModeNotifier, bool>(
  IsDarkModeNotifier.new,
);

class IsDarkModeNotifier extends Notifier<bool> {
  @override
  bool build() => false;

  void toggle() => state = !state;
}

// Provider para el color seleccionado
final selectedColorProvider = NotifierProvider<SelectedColorNotifier, int>(
  SelectedColorNotifier.new,
);

class SelectedColorNotifier extends Notifier<int> {
  @override
  int build() => 0;

  void setColor(int index) => state = index;
}
