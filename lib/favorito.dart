import 'package:flutter/material.dart';

class Favorito extends StatelessWidget{
  const Favorito ({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar( 
       title : const Text("Favorito"),
      ),
       body: Center(
        child: Column(
          children: [
            Image(image: AssetImage('assets/favorito.png')),
            ElevatedButton(
              child:const Text("Voltar"),
              onPressed: () {
                Navigator.pop(context);
              },
            ),
          ],
      ),
    ),
    );

  }
}