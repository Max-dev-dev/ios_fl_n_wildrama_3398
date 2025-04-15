import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:ios_fl_n_wildrama_3398/cubit/observation_cubit.dart';
import 'package:ios_fl_n_wildrama_3398/pages/loading/loading_screen.dart';

class MainApp extends StatelessWidget {
  const MainApp({super.key});

  @override
  Widget build(BuildContext context) {
    final mainAppColor = const Color(0xFF090406);

    return BlocProvider(
      create: (context) => ObservationCubit(),
      child: MaterialApp(
        debugShowCheckedModeBanner: false,
        theme: ThemeData(
          fontFamily: 'Atma',
          scaffoldBackgroundColor: mainAppColor,
          appBarTheme: AppBarTheme(backgroundColor: mainAppColor),
        ),
        home: LoadingScreen(),
      ),
    );
  }
}
