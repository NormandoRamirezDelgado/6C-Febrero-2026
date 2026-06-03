import 'package:componentes/theme/app_theme.dart';
import 'package:flutter/material.dart';

class CardScreen extends StatelessWidget {

  const CardScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Card Widget'),
      ),
      body: ListView(
        padding: EdgeInsets.symmetric(horizontal: 20, vertical: 10),
        children: [
          Card(
            child: Column(
              children: [
                ListTile(
                  leading: Icon(Icons.photo_album_outlined, color: AppTheme.primary),
                  title: Text('Soy un Título'),
                  subtitle: Text('Excepteur dolor commodo incididunt excepteur exercitation dolore sunt ad minim fugiat aliquip consectetur. Culpa dolor voluptate Lorem ad sint. Consectetur eiusmod occaecat est incididunt ad reprehenderit et pariatur dolor enim.'),
                )
              ],
            ),
          ),
        ],
      )
    );
  }
}