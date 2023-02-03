import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:random_colors/pages/cubit/main_page_cubit.dart';
import 'package:random_colors/pages/main_page.dart';

/// Application widget
class MyApp extends StatelessWidget {
  /// Application constructor
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      debugShowCheckedModeBanner: false,
      home: BlocProvider(
        create: (context) => MainPageCubit(),
        child: const MainPage(),
      ),
    );
  }
}
