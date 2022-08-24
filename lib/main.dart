import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:realtime_chat/screens/chat_screen.dart';
import 'package:realtime_chat/screens/login_screen.dart';
import 'package:realtime_chat/screens/registration_screen.dart';
import 'package:realtime_chat/screens/welcome_screen.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp();
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        debugShowCheckedModeBanner: false,
        theme: ThemeData.dark().copyWith(
            textTheme: TextTheme(bodyText1: TextStyle(color: Colors.black54))),
        initialRoute: WelcomeScreen().id,
        routes: {
          WelcomeScreen().id: (context) => WelcomeScreen(),
          LoginScreen().id: (context) => LoginScreen(),
          RegistrationScreen().id: (context) => RegistrationScreen(),
          ChatScreen().id: (context) => ChatScreen()
        });
  }
}
