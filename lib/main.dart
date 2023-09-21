import 'package:demoexpense_tracker/expenses.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:google_fonts/google_fonts.dart';

var KColorScheme = ColorScheme.fromSeed(
  seedColor: const Color.fromARGB(255, 228, 210, 248),
);
void main() {
  WidgetsFlutterBinding.ensureInitialized();
  SystemChrome.setPreferredOrientations([DeviceOrientation.portraitUp])
      .then((fn) {
    runApp(
      MaterialApp(
        theme: ThemeData().copyWith(
          useMaterial3: true,
          colorScheme: KColorScheme,
          appBarTheme: const AppBarTheme().copyWith(
            foregroundColor: KColorScheme.onPrimaryContainer,
            backgroundColor: KColorScheme.primaryContainer,
          ),
          cardTheme: const CardTheme().copyWith(
            color: KColorScheme.secondaryContainer,
            margin: const EdgeInsets.symmetric(horizontal: 15, vertical: 5),
          ),
          elevatedButtonTheme: ElevatedButtonThemeData(
            style: ElevatedButton.styleFrom(
                backgroundColor: KColorScheme.onPrimaryContainer),
          ),
          textTheme: GoogleFonts.salsaTextTheme(),
        ),
        home: const Expenses(),
        themeMode: ThemeMode.system,
        debugShowCheckedModeBanner: false,
      ),
    );
  });
}
