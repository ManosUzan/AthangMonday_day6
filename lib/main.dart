import 'package:flutter/material.dart';
import 'package:monday_day6/hoc/home_layout.dart';
import 'package:monday_day6/providers/count_provider.dart';
import 'package:monday_day6/providers/movie_provider.dart';
import 'package:monday_day6/screens/Moive/moviedetails.dart';
import 'package:monday_day6/screens/discarded/movie_app.dart';
import 'package:monday_day6/screens/Moive/movie_intro.dart';
import 'package:monday_day6/screens/Moive/movielogin.dart';
import 'package:monday_day6/widgets/loginform.dart';
import 'package:provider/provider.dart';
import 'screens/count_screen.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    // we can use one provider at a time but since, there are always different modules
    // we tend to use MultiProvider widget
    return MultiProvider(
      providers: [
        // providers should be categorized well to keep track and separate
        // all the modules and their respective variables
        ChangeNotifierProvider(create: (context)=> CountProvider()),
        ChangeNotifierProvider(create: (context)=> MovieProvider())
      ],
      child: MaterialApp(
        title: 'Flutter Demo',
        theme: ThemeData(
          // This is the theme of your application.
          //
          // TRY THIS: Try running your application with "flutter run". You'll see
          // the application has a purple toolbar. Then, without quitting the app,
          // try changing the seedColor in the colorScheme below to Colors.green
          // and then invoke "hot reload" (save your changes or press the "hot
          // reload" button in a Flutter-supported IDE, or press "r" if you used
          // the command line to start the app).
          //
          // Notice that the counter didn't reset back to zero; the application
          // state is not lost during the reload. To reset the state, use hot
          // restart instead.
          //
          // This works for code too, not just values: Most code changes can be
          // tested with just a hot reload.
          colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
          useMaterial3: true,
        ),
        // home: CountScreen()
        // home: movieintro(),
        // home: moviedetails(),
         initialRoute: '/',
        routes: {
          '/': (context)=> movieintro(),
          '/home': (context) => homelayout(),
        },
      ),
    );
  }
}

