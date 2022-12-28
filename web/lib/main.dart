import 'package:flutter/material.dart';
import 'package:web/screens/home/home_screen.dart';
import 'package:web/constants.dart';

import 'Database/Database.dart';

Future<void> main() async {
  WidgetsFlutterBinding.ensureInitialized();

  await DB.init();
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'shooter',
      theme: ThemeData(
        scaffoldBackgroundColor: backGroundColor,
        primaryColor: firstColor,
        textTheme: Theme.of(context).textTheme.apply(bodyColor: textColor),
        visualDensity: VisualDensity.adaptivePlatformDensity,
      ),
      home: HomeScreen(),
    );
  }
}
