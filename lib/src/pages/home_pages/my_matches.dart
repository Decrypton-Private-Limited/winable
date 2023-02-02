
import 'package:flutter/material.dart';

class MyMatchesPage extends StatefulWidget {
  const MyMatchesPage({Key? key}) : super(key: key);

  @override
  State<MyMatchesPage> createState() => _MyMatchesPageState();
}

class _MyMatchesPageState extends State<MyMatchesPage> {
  @override
  Widget build(BuildContext context) {
    return Container(
      child: Center(
        child: Text("MyMatches Page"),
      ),
    );
  }
}
