import 'package:cross_plateform_one/page/catalog_p.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Catalogue',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
        textTheme: TextTheme(
          headlineMedium: TextStyle(
            fontSize: 48,
            fontWeight: FontWeight.w700,
            color: Color(0xFF1E293B),
          ),
          bodyMedium: TextStyle(color: Color(0xFF1E293B)),
        ),
      ),
      onGenerateRoute: (set) {
        switch (set.name) {
          case '/':
            return MaterialPageRoute(builder: (_) => const CatalogPage());
          // case '/profil':
          //   return MaterialPageRoute(builder: (context) => const ProfilPage());
          default:
            return null;
        }
      },
    );
  }
}
