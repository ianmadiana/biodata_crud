import 'package:biodata_crud/theme/my_theme_amber.dart';
import 'package:biodata_crud/theme/my_theme_light.dart';
import 'package:flutter/material.dart';

import 'pages/home_page.dart';
import 'theme/my_theme_dark.dart';

// global variabel atau
// variabel yang biasa digunakan untuk color scheme
var kColorScheme = ColorScheme.fromSeed(seedColor: Colors.amber);
var kIndigoColorScheme = ColorScheme.fromSeed(seedColor: Colors.indigo);
var kDarkColorScheme = ColorScheme.fromSeed(seedColor: const Color(0xFF3C0753));
bool isDarkMode = false;

void main(List<String> args) {
  runApp(MaterialApp(
    theme: myThemeLight,
    // darkTheme: isDarkMode ? myThemeDark : myThemeAmber,
    // theme: myThemeLight,
    themeMode: ThemeMode.system,
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
