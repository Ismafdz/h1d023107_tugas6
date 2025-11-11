import 'package:flutter/material.dart';
import 'ui/home_page.dart'; 

void main() {
  runApp(const MyApp());
}
const Color dustyTeal = Color(0xFF97B3AE);
const Color mintCream = Color(0xFFD2E0D3);
const Color balletPink = Color(0xFFF0DDD6);
const Color salmonPink = Color(0xFFF2C3B9);
const Color taupe = Color(0xFFD6CBBF);
const Color offWhite = Color(0xFFF0EEEA);

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Isma\'s Profile',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        useMaterial3: true,
        scaffoldBackgroundColor: offWhite, 
        colorScheme: const ColorScheme.light(
          primary: dustyTeal, 
          onPrimary: offWhite, 
          secondary: salmonPink, 
          background: offWhite, 
          surface: mintCream, 
          onSurface: Color(0xFF333333), 
        ),
        appBarTheme: const AppBarTheme(
          backgroundColor: dustyTeal,
          foregroundColor: offWhite,
          elevation: 0,
          titleTextStyle: TextStyle(
            fontFamily: 'Roboto',
            fontSize: 20,
            fontWeight: FontWeight.bold,
          ),
        ),
        elevatedButtonTheme: ElevatedButtonThemeData(
          style: ElevatedButton.styleFrom(
            backgroundColor: dustyTeal,
            foregroundColor: offWhite,
            padding: const EdgeInsets.symmetric(horizontal: 30, vertical: 15),
            textStyle: const TextStyle(
              fontSize: 16,
              fontWeight: FontWeight.bold,
            ),
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(30.0), 
            ),
          ),
        ),
  
        cardTheme: CardTheme(
          elevation: 0, 
          color: mintCream, 
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(12.0),
          ),
        ),

        textTheme: const TextTheme(
          headlineSmall: TextStyle(
            fontWeight: FontWeight.bold,
            fontSize: 24,
            color: dustyTeal,
          ),
          titleLarge: TextStyle(
            fontWeight: FontWeight.bold,
            fontSize: 18,
            color: Color(0xFF333333),
          ),
          bodyMedium: TextStyle(
            fontSize: 16,
            height: 1.5, 
            color: Color(0xFF555555),
          ),
        ),
      ),
      home: const HomePage(), 
    );
  }
}