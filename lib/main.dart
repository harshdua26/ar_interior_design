import 'package:flutter/material.dart';
import 'package:firebase_core/firebase_core.dart';
import 'screens/home_screen.dart';
import 'screens/login_screen.dart';
import 'services/auth_service.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp(
    options: const FirebaseOptions(
      apiKey: "AIzaSyDVfGiDMRxCi29BiZmhvKcWhVxdAT9xRuE",
      authDomain: "alphabetar-8f650.firebaseapp.com",
      projectId: "alphabetar-8f650",
      storageBucket: "alphabetar-8f650.firebasestorage.app",
      messagingSenderId: "559356650571",
      appId: "1:559356650571:web:71afc2e9f4f482c52319ce",
    ),
  );
  runApp(const ARInteriorApp());
}

class ARInteriorApp extends StatelessWidget {
  const ARInteriorApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'AR Interior Design',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        primarySwatch: Colors.blue,
        colorScheme: ColorScheme.light(
          primary: Color(0xFF94B9AF),
          secondary: Color(0xFFE8B4BC),
          surface: Color(0xFFFAF6F6),
          background: Color(0xFFF5F5F5),
          error: Color(0xFFE57373),
        ),
        appBarTheme: const AppBarTheme(
          elevation: 0,
          centerTitle: true,
          backgroundColor: Colors.white,
          foregroundColor: Color(0xFF4A4A4A),
          iconTheme: IconThemeData(color: Color(0xFF4A4A4A)),
          titleTextStyle: TextStyle(
            color: Color(0xFF4A4A4A),
            fontSize: 20,
            fontWeight: FontWeight.w600,
          ),
        ),
        scaffoldBackgroundColor: Color(0xFFF5F5F5),
        cardTheme: CardTheme(
          elevation: 4,
          shadowColor: Colors.black12,
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(16),
          ),
        ),
        textTheme: TextTheme(
          headlineMedium: TextStyle(
            color: Color(0xFF4A4A4A),
            fontWeight: FontWeight.bold,
          ),
          bodyLarge: TextStyle(
            color: Color(0xFF4A4A4A),
          ),
          bodyMedium: TextStyle(
            color: Color(0xFF6B6B6B),
          ),
        ),
      ),
      home: StreamBuilder(
        stream: AuthService().currentUser?.reload().asStream() ??
            Stream.value(null),
        builder: (context, snapshot) {
          if (snapshot.connectionState == ConnectionState.waiting) {
            return const Center(child: CircularProgressIndicator());
          }
          return AuthService().currentUser != null
              ? const HomeScreen()
              : const LoginScreen();
        },
      ),
      routes: {
        '/home': (context) => const HomeScreen(),
        '/login': (context) => const LoginScreen(),
      },
    );
  }
}
