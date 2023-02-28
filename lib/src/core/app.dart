import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';
import 'package:login_form/src/core/routs_manager.dart';

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      onGenerateRoute: RoutesGenerator.getRoute,
      initialRoute: AppRoutes.loginRoute,
      theme: ThemeData(
        textTheme: const TextTheme(
          titleLarge: TextStyle(
            color: Color.fromARGB(185, 140, 91, 255),
            fontSize: 34,
            fontWeight: FontWeight.bold,
          ),
          titleMedium: TextStyle(
            color: Color.fromARGB(96, 0, 0, 0),
            fontSize: 18,
            fontWeight: FontWeight.normal,
          )
        ),
      ),
      darkTheme: ThemeData.dark(),
    );
  }
}
