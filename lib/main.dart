import 'package:echo_chat_application/screens/auth.dart';
import 'package:echo_chat_application/screens/chat.dart';
import 'package:echo_chat_application/screens/splash.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:firebase_core/firebase_core.dart';
import 'firebase_options.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp(options: DefaultFirebaseOptions.currentPlatform);
  runApp(const App());
}

class App extends StatelessWidget {
  const App({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Echo',
      theme: ThemeData().copyWith(
        colorScheme: ColorScheme.fromSeed(
          seedColor: const Color.fromARGB(255, 107, 107, 169),
        ),
      ),
      home: StreamBuilder(
        stream: FirebaseAuth.instance.authStateChanges(),
        builder: (ctx, snapshot) =>
            snapshot.connectionState == ConnectionState.waiting
            ? const SplashScreen()
            : snapshot.hasError
            ? const AuthScreen()
            : snapshot.hasData
            ? const ChatScreen()
            : const AuthScreen(),
      ),
    );
  }
}
