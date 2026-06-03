import 'package:flutter/material.dart';

class ListView2Screen extends StatelessWidget {

  final options = const [
    'Megaman', 
    'Metal Gear', 
    'Super Smash', 
    'Final Fantasy',
  ];

  const ListView2Screen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('ListView Tipo 2'),
        //backgroundColor: Colors.indigo,
        foregroundColor: Colors.white,
      ),
      body: ListView.separated(
        itemCount: options.length,
        itemBuilder: (_, index) => ListTile(
          title: Text( options[index] ),
          trailing: Icon(Icons.arrow_forward_ios_outlined, color: const Color.fromARGB(255, 215, 15, 25)),
          onTap: () {

            // final game = options[index];
            // print(game);

          },
        ),
        separatorBuilder: (_, _) => Divider(), 
      ),
    );
  }
}