import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:twitter_by_ncl/core/router/router.dart' as router;
import 'injector/injector.dart' as dl;

void main() async {
  await ScreenUtil.ensureScreenSize();
  await dl.init();

  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  ThemeData _buildTheme(brightness) {
    var baseTheme = ThemeData(brightness: brightness);

    return baseTheme.copyWith(
      textTheme: GoogleFonts.openSansTextTheme(baseTheme.textTheme),
    );
  }

  const MyApp({super.key});
  @override
  Widget build(BuildContext context) {
    return ScreenUtilInit(
      builder: (context, child) => MaterialApp(
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
          textTheme: GoogleFonts.poppinsTextTheme(),
          useMaterial3: true,
          colorScheme: const ColorScheme(
            brightness: Brightness.dark,
            primary: Colors.white,
            onPrimary: Colors.white,
            secondary: Colors.green,
            onSecondary: Colors.white,
            primaryContainer: Colors.pink,
            error: Colors.black,
            onError: Colors.white,
            background: Colors.black,
            onBackground: Colors.white,
            surface: Colors.black,
            onSurface: Colors.white,
          ),
        ),
        debugShowCheckedModeBanner: false,
        onGenerateRoute: router.Router().generateAppRoutes,
      ),
    );
  }
}
