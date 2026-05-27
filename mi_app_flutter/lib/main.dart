import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:mi_app_flutter/config/router/app_router.dart';
import 'package:mi_app_flutter/config/theme/app_theme.dart';
import 'package:mi_app_flutter/config/providers/theme_provider.dart';


void main() {
  runApp(
    const ProviderScope(
      child: MyApp()
    )
  );
}

class MyApp extends ConsumerWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final isDarkMode = ref.watch(isDarkModeProvider);
    final selectedColor = ref.watch(selectedColorProvider);

    return MaterialApp.router(
      routerConfig: appRouter,
      debugShowCheckedModeBanner: false,
      theme: AppTheme(
        isDarkMode: isDarkMode, 
        selectColor: selectedColor
      ).getTheme(),
    );
  }
}
