import 'package:flutter/material.dart';

class Historico extends StatelessWidget{
  const Historico({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar( 
       title : const Text("Historico"),
      ),
    body: Center(
        child: Column(
          children: [
            Image(image: AssetImage('assets/historico.jpg')),
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
