import 'package:flutter/material.dart';
import 'package:pit_app/presentation/view/pet/pet_screen.dart';
import 'package:pit_app/shard/theme/color_scheme.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Pet App',
      theme: ThemeData(
        useMaterial3: true,
        scaffoldBackgroundColor: colorSchemeLight.background,
        colorScheme: colorSchemeLight,
        primaryColor: colorSchemeLight.primary,
        fontFamily: 'Balsamiq',
      ),
      home: PetScreen(),
    );
  }
}
