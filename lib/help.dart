import 'package:flutter/material.dart';
import 'package:menudra/menu.dart';



class HelpScreen extends StatefulWidget {
  const HelpScreen({super.key});

  @override
  State<HelpScreen> createState() => _HelpScreenState();
}

class _HelpScreenState extends State<HelpScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Help'),
        centerTitle: true,
      ),
        drawer: DrawerMenu(),
      body: Column(
        children: [
          Text('Esto es un help')
        ],
      ),
    );
  }
}