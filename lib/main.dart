import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:neps_chat/presentation/bloc/bottom_nav_bar_bloc/bottom_nav_bar_bloc.dart';

import 'core/Themes/size.dart';
import 'core/Themes/theme.dart';

import 'splash_screen.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    SizeConfig().init(context);
    return BlocProvider(
      create: (context) => BottomNavBarBloc(),
      child: MaterialApp(
        title: 'Futsal App',
        debugShowCheckedModeBanner: false,
        theme: theme(context),
        home: const SplashScreen(),
      ),
    );
  }
}
