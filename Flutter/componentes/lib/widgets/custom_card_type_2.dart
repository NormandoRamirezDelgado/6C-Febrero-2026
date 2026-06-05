import 'package:componentes/theme/app_theme.dart';
import 'package:flutter/material.dart';

class CustomCardType2 extends StatelessWidget {

  final String imageUrl;
  final String? name;

  const CustomCardType2( {
    super.key, 
    required this.imageUrl,
    this.name,
  });

  @override
  Widget build(BuildContext context) {
    return Card(
      clipBehavior: Clip.antiAlias,
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadiusGeometry.circular(25)
      ),
      elevation: 20,
      shadowColor: Colors.amber,
      child: Column(
        children: [

          // Image(
          //   image: NetworkImage('https://assets.tommackie.com/wp-content/uploads/2021/05/25133428/190253-1.jpg'),
          // )

          FadeInImage(
            image: NetworkImage( imageUrl ), 
            placeholder: AssetImage('assets/loading.gif'),
            width: double.infinity,
            height: 235,
            fit: BoxFit.contain,
          ),

          if ( name != null)
            Container(
              alignment: AlignmentDirectional.centerEnd,
              padding: EdgeInsets.only(right: 20, top: 10, bottom: 10),
              child: Text( name! )
            ),

        ],
      ),
    );
  }
}