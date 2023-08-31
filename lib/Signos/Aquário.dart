import 'package:flutter/material.dart';

class Aquario extends StatelessWidget{
  const Aquario({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar( 
       title : const Text("Aquario"),
      ),
       body: Center(
        child: Column(
          children: [
            SizedBox(
              height: 500,
              width: 500,
              child: Image(image: AssetImage('assets/aquario1.jpg'))),
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
