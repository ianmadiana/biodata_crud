import 'package:flutter/material.dart';

import 'pages/home_page.dart';

// global variabel atau
// variabel yang biasa digunakan untuk color scheme
var kColorScheme = ColorScheme.fromSeed(seedColor: Colors.amber);

void main(List<String> args) {
  runApp(MaterialApp(
    theme: ThemeData().copyWith(
        colorScheme: kColorScheme,
        appBarTheme: AppBarTheme(
            backgroundColor: kColorScheme.onPrimaryContainer,
            foregroundColor: kColorScheme.onPrimary),
        cardTheme: CardTheme(
            color: kColorScheme.secondaryContainer,
            margin: const EdgeInsets.symmetric(horizontal: 16, vertical: 10)),
        elevatedButtonTheme: ElevatedButtonThemeData(
            style: ElevatedButton.styleFrom(
                backgroundColor: kColorScheme.primaryContainer)),
        textTheme: ThemeData().textTheme.copyWith(
            titleLarge: TextStyle(
                fontWeight: FontWeight.bold,
                fontSize: 24,
                color: kColorScheme.onSecondaryContainer))),
    home: const HomePage(),
  ));
}

// class MyApp extends StatefulWidget {
//   const MyApp({super.key});

//   @override
//   State<MyApp> createState() => _MyAppState();
// }

// class _MyAppState extends State<MyApp> {
//   int _selectedIndex = 0;

//   final List<Widget> _pages = [
//     const HomePage(),
//     const AboutPage(),
//     const SettingPage()
//   ];
//   void _onItemTapped(int index) {
//     setState(() {
//       _selectedIndex = index;
//     });
//   }

//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//         appBar: AppBar(
//           title: const Text('Biodata CRUD'),
//         ),
//         body: Center(
//           child: _pages.elementAt(_selectedIndex),
//         ),
//         bottomNavigationBar: BottomNavigationBar(
//           currentIndex: _selectedIndex,
//           onTap: _onItemTapped,
//           items: const [
//             BottomNavigationBarItem(icon: Icon(Icons.home), label: 'Home'),
//             BottomNavigationBarItem(icon: Icon(Icons.info), label: 'About'),
//             BottomNavigationBarItem(
//                 icon: Icon(Icons.settings), label: 'Setting')
//           ],
//         ),
//         floatingActionButton: FloatingActionButton(
//           onPressed: () => showModalBottomSheet(
//             useSafeArea: true,
//             isScrollControlled: true,
//             context: context,
//             builder: (context) => AddBiodata(),
//           ),
//           child: const Icon(Icons.add),
//         ));
//   }
// }
