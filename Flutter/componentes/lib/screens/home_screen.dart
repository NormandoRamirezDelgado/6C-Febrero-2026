import 'package:componentes/router/app_routes.dart';
import 'package:componentes/theme/app_theme.dart';
import 'package:flutter/material.dart';

class HomeScreen extends StatelessWidget {

  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {

    final menuOption = AppRoutes.menuOption;

    return Scaffold(
      appBar: AppBar(
        title: Text('Componentes de Flutter'),
        //backgroundColor: const Color.fromARGB(255, 218, 153, 229),
        foregroundColor: Colors.white,
      ),
      body: ListView.separated(
        itemBuilder: (context, index) => ListTile(
          leading: Icon(
            menuOption[index].icon, 
            color: AppTheme.primary,
          ),
          title: Text(menuOption[index].name, style: TextStyle(color: AppTheme.primary),),
          onTap: () {

            Navigator.pushNamed(context, menuOption[index].route);

          },
        ), 
        separatorBuilder: (context, index) => Divider() , 
        itemCount: menuOption.length,
      )
    );
  }
}