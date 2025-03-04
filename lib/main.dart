import 'package:flutter/material.dart';
import 'package:skillxchange/presentation/screens/companyInformation_screen.dart';
import 'package:skillxchange/presentation/screens/createVacancies_screen.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: CreatevacanciesScreen(),
      debugShowCheckedModeBanner: false,
      );

  }
}

