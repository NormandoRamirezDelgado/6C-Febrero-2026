import 'package:flutter/material.dart';

import '../widgets/widgets.dart';

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

          CustomCardType1(),
          SizedBox(height: 10,),
          CustomCardType2(imageUrl: 'https://assets.tommackie.com/wp-content/uploads/2021/05/25133428/190253-1.jpg', name: 'Un Hermoso Paisaje',),

          SizedBox(height: 10,),

          CustomCardType2(imageUrl: 'https://upload.wikimedia.org/wikipedia/commons/3/35/Neckertal_20150527-6384.jpg'),

          SizedBox(height: 10,),

          CustomCardType2(imageUrl: 'https://images.unsplash.com/photo-1692264438297-e1e38a867d02?fm=jpg&q=60&w=3000&auto=format&fit=crop&ixlib=rb-4.1.0&ixid=M3wxMjA3fDB8MHxzZWFyY2h8MTF8fGJlYXV0aWZ1bCUyMGxhbmRzY2FwZXxlbnwwfHwwfHx8MA%3D%3D'),
      

        ],
      )
    );
  }
}

