import 'package:first_project/models/cart.dart';
import 'package:first_project/models/catalog.dart';
import 'package:first_project/pages/cart_page.dart';
import 'package:first_project/pages/home_page.dart';
import 'package:first_project/pages/login_page.dart';
import 'package:first_project/utils/routes.dart';
import 'package:first_project/widgets/themes.dart';
import 'package:flutter/material.dart';
import 'package:velocity_x/velocity_x.dart';

import 'core/store.dart';

void main() {
  
  runApp(VxState(
    store: MyStore(CatalogModel(),CartModel()),
    child: MyApp()));
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    // ignore: prefer_const_constructors
    return MaterialApp(
      // ignore: prefer_const_constructors
      themeMode: ThemeMode.system,
      theme: MyTheme.lightTheme(context),
      darkTheme: MyTheme.darkTheme(context),
      debugShowCheckedModeBanner: false,
      initialRoute: MyRoutes.homeRoute,
      routes: {
        "/": (context) => LoginPage(),
        MyRoutes.homeRoute: (context) => HomePage(),
        MyRoutes.loginRoute: (context) => LoginPage(),
        MyRoutes.cartRoute: (context) => CartPage(),
      },
    );
  }
}
