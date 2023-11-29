import 'package:bloc_course/core/routes/app_routes.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const MyBlocApp());
}

class MyBlocApp extends StatelessWidget {
  const MyBlocApp({super.key});
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      onGenerateRoute: AppRoutes().generateRoute,
    );
  }
}
