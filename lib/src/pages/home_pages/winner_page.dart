
import 'package:flutter/material.dart';

class WinnerPage extends StatefulWidget {
  const WinnerPage({Key? key}) : super(key: key);

  @override
  State<WinnerPage> createState() => _WinnerPageState();
}

class _WinnerPageState extends State<WinnerPage> {
  @override
  Widget build(BuildContext context) {
    return Container(
      child: Center(
        child: Text("Winner Page"),
      ),
    );
  }
}
