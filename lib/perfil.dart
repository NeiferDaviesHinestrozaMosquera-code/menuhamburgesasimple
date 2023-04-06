import 'package:flutter/material.dart';
import 'package:menudra/menu.dart';


class PerfilScreen extends StatefulWidget {
  const PerfilScreen({super.key});

  @override
  State<PerfilScreen> createState() => _PerfilScreenState();
}

class _PerfilScreenState extends State<PerfilScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Perfil'),
        centerTitle: true,

      ),
        drawer: DrawerMenu(),
      body: Column(
        children: [
          Text('Esto es un perfil')
        ],
      ),
    );
  }
}