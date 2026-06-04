import 'package:componentes/theme/app_theme.dart';
import 'package:flutter/material.dart';

class CustomCardType1 extends StatelessWidget {
  const CustomCardType1({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Card(
      child: Column(
        children: [
          ListTile(
            leading: Icon(Icons.photo_album_outlined, color: AppTheme.primary),
            title: Text('Soy un Título'),
            subtitle: Text('Excepteur dolor commodo incididunt excepteur exercitation dolore sunt ad minim fugiat aliquip consectetur. Culpa dolor voluptate Lorem ad sint. Consectetur eiusmod occaecat est incididunt ad reprehenderit et pariatur dolor enim.'),
          ),

          Padding(
            padding: const EdgeInsets.only(right: 10),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.end,
              children: [
                TextButton(
                  onPressed: (){}, 
                  child: Text('Cancelar')
                ),
                TextButton(
                  onPressed: (){}, 
                  child: Text('Ok')
                ),
              ],
            ),
          )
        ],
      ),
    );
  }
}