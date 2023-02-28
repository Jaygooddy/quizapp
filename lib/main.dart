import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';

void main() {
  runApp(Fooderich());
}

class Fooderich extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Myhome(),
    );
  }
}

class Myhome extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: const SafeArea(child: Column()),
    );
  }
}
