// import 'package:device_preview/device_preview.dart';
import 'package:e_commerce_app/const/global_colors.dart';
import 'package:e_commerce_app/manger/get_Product/get_product_cubit.dart';
import 'package:e_commerce_app/screen/HomeScreen.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MultiBlocProvider(
      providers: [
        BlocProvider(create: (context) {
          return GetProdectCubit();
        })
      ],
      child: MaterialApp(
        debugShowCheckedModeBanner: false,
        theme: Theme_App(),
        home: Homescreen(),
      ),
    );
  }

  ThemeData Theme_App() {
    return ThemeData(
      useMaterial3: true,
      scaffoldBackgroundColor: lightScaffoldColor,
      primaryColor: lightCardColor,
      appBarTheme: BarTheme(),
      iconTheme: IconThemeData(
        color: lightIconsColor,
      ),

      textSelectionTheme: const TextSelectionThemeData(
        cursorColor: Colors.black,
        selectionColor: Colors.blue,
        // selectionHandleColor: Colors.blue,
      ),
      // textTheme: TextTheme()
      // textTheme: Theme.of(context).textTheme.apply(
      //       bodyColor: Colors.black,
      //       displayColor: Colors.black,
      //     ),
      cardColor: lightCardColor,
      brightness: Brightness.light,
      colorScheme: ThemeData()
          .colorScheme
          .copyWith(
            secondary: lightIconsColor,
            brightness: Brightness.light,
          )
          .copyWith(background: lightBackgroundColor),
    );
  }

  AppBarTheme BarTheme() {
    return AppBarTheme(
      iconTheme: IconThemeData(
        color: lightIconsColor,
      ),
      backgroundColor: lightScaffoldColor,
      centerTitle: true,
      titleTextStyle: TextStyle(
          color: lightTextColor, fontSize: 22, fontWeight: FontWeight.bold),
      elevation: 0,
    );
  }
}
