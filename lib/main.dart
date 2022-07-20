import 'package:edvive_task1_syed_mahamudul_hasan/models/appcontroller.dart';
import 'package:edvive_task1_syed_mahamudul_hasan/screens/dashScreen.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MultiProvider(
      providers: [
        ChangeNotifierProvider<TranslateProvider>.value(
          value: TranslateProvider(),
        ),
      ],
      child: MaterialApp(
        debugShowCheckedModeBanner: false,
        title: 'Flutter Translator',
        theme: ThemeData(
          primarySwatch: Colors.blue,
        ),
        home: const DashScreen(),
      ),
    );
  }
}
