import 'package:flutter/material.dart';
import 'package:login_form/src/user_managment/presentaion/pages/login_page.dart';
import 'package:login_form/src/user_managment/presentaion/pages/register_page.dart';

class AppRoutes {
  static const String loginRoute = "/login";
  static const String registerRoute = "/register";
}

class RoutesGenerator {
  static Route<dynamic> getRoute(RouteSettings routeSettings) {
    switch (routeSettings.name) {
      case AppRoutes.loginRoute:
      return MaterialPageRoute(builder: (context) => const LoginPage(),);
      case AppRoutes.registerRoute:
      return MaterialPageRoute(builder: (context) => const RegisterPage(),);
      default:
        return MaterialPageRoute(builder: (context) => const UnFoundRoutes(),);
    }
  }
}

class UnFoundRoutes extends StatelessWidget {
  const UnFoundRoutes({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: const [Text("404 unfound page")],
        ),
      ),
    );
  }
}
