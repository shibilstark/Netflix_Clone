import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:netflix/application/downloads/downloads_bloc.dart';
import 'package:netflix/core/colors/colors.dart';
import 'package:netflix/domain/core/di/injectable.dart';
import 'package:netflix/domain/i_downloads%20_repo.dart';

import 'presentation/main_page/screen_main_page.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await configureInjection();
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MultiBlocProvider(
      providers: [
        BlocProvider(
          create: (context) => getIt<DownloadsBloc>(),
          child: Container(),
        )
      ],
      child: MaterialApp(
        theme: ThemeData(
            appBarTheme: const AppBarTheme(backgroundColor: blackColor),
            fontFamily: GoogleFonts.montserrat().fontFamily,
            scaffoldBackgroundColor: backgroundColor,
            primarySwatch: Colors.blue,
            backgroundColor: backgroundColor,
            textTheme: const TextTheme(
                bodyText1: TextStyle(color: Colors.white),
                bodyText2: TextStyle(color: Colors.white))),
        debugShowCheckedModeBanner: false,
        home: ScreenMainPage(),
      ),
    );
  }
}
