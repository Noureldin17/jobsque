import 'package:flutter/material.dart';
import 'package:jobsque/data/local/my_cache.dart';
import 'package:jobsque/presentation/router/app_router.dart';
// import 'package:jobsque/presentation/screens/LoginPage.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await MyCache.init();
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  MyApp({super});
  final AppRouter router = AppRouter();
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      onGenerateRoute: router.onGenerateRoute,
    );
  }
}

// class MyHomePage extends StatefulWidget {
//   const MyHomePage({super.key, required this.title});

//   final String title;

//   @override
//   State<MyHomePage> createState() => _MyHomePageState();
// }

// class _MyHomePageState extends State<MyHomePage> {
//   @override
//   Widget build(BuildContext context) {
//     return LoginPageWidget();
//   }
// }
