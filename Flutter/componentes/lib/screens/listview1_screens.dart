import 'package:flutter/material.dart';

class ListView1Screen extends StatelessWidget {

  final options = const [
    'Megaman', 
    'Metal Gear', 
    'Super Smash', 
    'Final Fantasy'
  ];

  const ListView1Screen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('ListView Tipo 1'),
      ),
      body: ListView(
        children: [
          
          ...options.map(
            (game) => ListTile(
              //leading: Icon(Icons.access_time_outlined),
              trailing: Icon(Icons.arrow_forward_ios_outlined),
              title: Text( game ),
            ), 
          ),

          Divider(),

        ],
      ),
    );
  }
}