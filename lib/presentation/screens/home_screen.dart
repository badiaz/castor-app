import 'package:castor_spotify_app/presentation/screens/screens.dart';
import 'package:flutter/material.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  var selectedIndex = 0;
  List<Widget> listPages = [
    const StartPage(),
    const SearchPage(),
    const MyLibraryPage(),
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: listPages.elementAt(selectedIndex),
      bottomNavigationBar: BottomNavigationBar(
        elevation: 50,
        type: BottomNavigationBarType.fixed,
        currentIndex: selectedIndex,
        backgroundColor: Colors.black26,
        iconSize: 20,
        unselectedFontSize: 10,
        selectedFontSize: 12,
        selectedIconTheme: const IconThemeData(
            color: Colors.white), // Tema del ícono seleccionado
        unselectedIconTheme: const IconThemeData(color: Colors.grey),
        selectedLabelStyle: const TextStyle(
          color: Colors.white,
        ), // Estilo del texto del label seleccionado
        unselectedLabelStyle: const TextStyle(color: Colors.white),
        items: [
          BottomNavigationBarItem(
              label: "Inicio",
              icon: Image.asset(
                'assets/home.png',
                color: Colors.grey,
                width: 25,
              )),
          BottomNavigationBarItem(
              label: "Buscar",
              icon: Image.asset(
                'assets/search.png',
                color: Colors.grey,
                width: 25,
              )),
          BottomNavigationBarItem(
              label: "Tu biblioteca",
              icon: Image.asset(
                'assets/library.png',
                color: Colors.grey,
                width: 25,
              )),
        ],
        onTap: (index) {
          setState(() {
            selectedIndex = index;
          });
        },
      ),
    );
  }
}
