import 'package:flutter/material.dart';

class CounterFunctionsScreen extends StatefulWidget {
  const CounterFunctionsScreen({super.key});

  @override
  State<CounterFunctionsScreen> createState() => _CounterFunctionsScreenState();
}

class _CounterFunctionsScreenState extends State<CounterFunctionsScreen> {
  
  int clickCounter = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Counter Functions'),
        actions: [
          IconButton(
            onPressed: () {
              setState(() {
                clickCounter = 0;
              });
            }, 
            icon: Icon(Icons.refresh_rounded)
          ),
          // IconButton(
          //   onPressed: () {}, 
          //   icon: Icon(Icons.refresh_rounded)
          // ),
        ],
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              'Cantidad de Clicks', 
              style: TextStyle(
                fontSize: 25
              ),
            ),
            Text(
              '$clickCounter',
              style: TextStyle(
                fontSize: 160,
                fontWeight: FontWeight(100),
              )
              )
          ],
        ),
      ),
      floatingActionButton: Column(
        mainAxisAlignment: MainAxisAlignment.end,
        children: [
          FloatingActionButton(
            shape: StadiumBorder(),
            onPressed: () {
              clickCounter = 0;
              setState(() {});
            },
            child: Icon(Icons.refresh_outlined),
          ),

          SizedBox(height: 15),

          FloatingActionButton(
            shape: StadiumBorder(),
            onPressed: () {
              clickCounter++;
              setState(() {});
            },
            child: Icon(Icons.plus_one_outlined),
          ),

          SizedBox(height: 15),

          FloatingActionButton(
            shape: StadiumBorder(),
            onPressed: () {
              clickCounter--;
              setState(() {});
            },
            child: Icon(Icons.exposure_minus_1_outlined),
          ),
        ],
      ),
    );
  }
}