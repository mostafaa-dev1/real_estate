import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:real_estate/core/routing/app_routs.dart';
import 'package:real_estate/core/routing/router.dart';

class RealEstatApp extends StatelessWidget {
  final AppRouter appRouter;
  const RealEstatApp({super.key, required this.appRouter});

  @override
  Widget build(BuildContext context) {
    return ScreenUtilInit(
      designSize: const Size(360, 690),
      minTextAdapt: true,
      child: MaterialApp(
        initialRoute: AppRoutes.onBoard,
        debugShowCheckedModeBanner: false,
        onGenerateRoute: (settings) {
          return appRouter.onGenerateRoute(settings);
        },
        title: 'Flutter Demo',
        theme: ThemeData(
          appBarTheme: const AppBarTheme(
            surfaceTintColor: Colors.transparent,
          ),
          colorScheme: ColorScheme.fromSeed(
              seedColor: const Color.fromARGB(255, 33, 81, 255)),
          useMaterial3: true,
        ),
      ),
    );
  }
}
