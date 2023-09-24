import 'package:flutter/material.dart';
import 'package:remind_me/app_theme.dart';
import 'package:remind_me/home/home_page.dart';

void main() {
  runApp(const RemindMeApp());
}

class RemindMeApp extends StatelessWidget {
  const RemindMeApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Remind Me',
      theme: AppTheme().light,
      home: const HomePage(),
    );
  }
}
