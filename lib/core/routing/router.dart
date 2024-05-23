import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:real_estate/core/routing/app_routs.dart';
import 'package:real_estate/features/chat_bot/chat_bot.dart';
import 'package:real_estate/features/home/home_page.dart';
import 'package:real_estate/features/item_view/item_view.dart';
import 'package:real_estate/features/sign_in/sign_in.dart';
import 'package:real_estate/features/notifications/notifications.dart';
import 'package:real_estate/features/onboard/onboard.dart';
import 'package:real_estate/features/sign_up/sign_up.dart';
import 'package:real_estate/features/start_screen/start_screen.dart';

class AppRouter {
  Route<dynamic> onGenerateRoute(RouteSettings settings) {
    final arguments = settings.arguments;
    switch (settings.name) {
      case AppRoutes.onBoard:
        return MaterialPageRoute(builder: (_) => const OnBoard());
      case AppRoutes.home:
        return MaterialPageRoute(builder: (_) => const HomePage());
      case AppRoutes.chatBot:
        return MaterialPageRoute(builder: (_) => const ChatBot());
      case AppRoutes.login:
        return MaterialPageRoute(builder: (_) => const LoginScreen());
      case AppRoutes.register:
        return MaterialPageRoute(builder: (_) => const RegisterScreen());
      case AppRoutes.notifications:
        return MaterialPageRoute(builder: (_) => const Notifications());
      case AppRoutes.start:
        return MaterialPageRoute(builder: (_) => const StartScreen());
      default:
        return MaterialPageRoute(
            builder: (_) => const Scaffold(
                  body: Center(
                    child: Text('No route defined'),
                  ),
                ));
    }
  }
}
