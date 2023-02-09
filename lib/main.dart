import 'package:flutter/material.dart';
import 'package:monkey_nft_app/ui/constraints.dart';

import 'business/navigation/go_router.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  MyApp({super.key});

  final GoRouters route = GoRouters();

  @override
  Widget build(BuildContext context) {
    return MaterialApp.router(
      title: 'Monkey App',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        primarySwatch: primaryColor,
      ),
      routerConfig: route.router,
    );
  }
}

