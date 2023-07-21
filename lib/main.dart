import 'package:flutter/material.dart';
import 'package:twitter_by_ncl/core/router/router.dart' as router;
import 'injector/injector.dart' as dl;

void main() async {
  await dl.init();
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      // title: "Twitter by Ncl",
      // theme: ThemeData(
      //   brightness: Brightness.light,
      //   /* light theme settings */
      // ),
      // darkTheme: ThemeData(
      //   brightness: Brightness.dark,

      //   /* dark theme settings */
      // ),
      // themeMode: ThemeMode.dark,
      /* ThemeMode.system to follow system theme, 
         ThemeMode.light for light theme, 
         ThemeMode.dark for dark theme
      */
      darkTheme: ThemeData(
        useMaterial3: true,
        colorScheme: const ColorScheme(
          brightness: Brightness.dark,
          primary: Colors.red,
          onPrimary: Colors.white,
          secondary: Colors.green,
          onSecondary: Colors.white,
          primaryContainer: Colors.pink,
          error: Colors.black,
          onError: Colors.white,
          background: Colors.black,
          onBackground: Colors.white,
          surface: Colors.pink,
          onSurface: Colors.white,
        ),
      ),
      debugShowCheckedModeBanner: false,
      onGenerateRoute: router.Router().generateAppRoutes,
    );
  }
}
