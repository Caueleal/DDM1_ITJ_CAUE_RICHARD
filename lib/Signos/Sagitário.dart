import 'package:flutter/material.dart';

class Calendario extends StatelessWidget{
  const Calendario({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar( 
       title : const Text("Calendario"),
      ),
       body: Center(
        child: Column(
          children: [
            Image(image: AssetImage('assets/sargitario.jpg')),
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
