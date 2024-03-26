import 'package:flutter/material.dart';

class MyLibraryPage extends StatefulWidget {
  const MyLibraryPage({super.key});

  @override
  MyLibraryPageState createState() => MyLibraryPageState();
}

class MyLibraryPageState extends State<MyLibraryPage> {
  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.black,
      child: const Center(
        child: Text("Library"),
      ),
    );
  }
}
