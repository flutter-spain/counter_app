import 'package:flutter/material.dart';

class HomeScreen extends StatefulWidget {
  
  const HomeScreen({Key? key}) : super(key: key);

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  int counter = 15;

  @override
  Widget build(BuildContext context) {
      

      return Scaffold(
        appBar: AppBar(
          title: const Text('Home Screen'),
          elevation: 10,
        ),
        backgroundColor: Colors.white,
        body :  Center(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                // ignore: prefer_const_literals_to_create_immutables
                children: <Widget>[
                  const Text(
                    'Números de Clicks:',
                  ),
                  Text(
                    '$counter',
                    style: const TextStyle(
                      fontSize: 30,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ],
              ),
              ),
        
        floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
        floatingActionButton: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            FloatingActionButton(
              onPressed: () {
                counter++;
                setState(() {
                  
                });
              },
              tooltip: 'Incrementar',
              child: const Icon(Icons.add),
            ),

            const SizedBox(
              width: 20,
            ),

            FloatingActionButton(
              onPressed: () {
                counter = 0;
                setState(() {
                  
                });
              },
              tooltip: 'Incrementar',
              child: const Icon(Icons.exposure_zero),
              backgroundColor: Colors.red,
            ),

            const SizedBox(
              width: 20,
            ),

            FloatingActionButton(
              onPressed: () {
                counter--;
                setState(() {
                  
                });
              },
              tooltip: 'Incrementar',
              child: const Icon(Icons.exposure_minus_1),
            ),
            
          ],
        ),
        
      );
  }
}