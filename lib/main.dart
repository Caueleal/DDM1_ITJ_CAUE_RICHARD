import 'package:aula_17/calendario.dart';
import 'package:aula_17/historico.dart';
import 'package:flutter/material.dart';
import 'package:aula_17/TerceiraPagina.dart';

void main() {
  runApp(const MaterialApp(title: "Navegação Básica", home: MainApp()));
}

class MainApp extends StatelessWidget {
  const MainApp({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Pagina Principal"),
      ),
      
      body: Center(
        child: IconButton(
          icon: const Icon(Icons.play_arrow),
          tooltip: 'vai para proxima pagina',
          onPressed: () {
            Navigator.push(context,
                MaterialPageRoute(builder: (context) => PaginaSecundaria()));
          },
        ),
      ),
    );
  }
}

class PaginaSecundaria extends StatelessWidget {
  const PaginaSecundaria({super.key});
   @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar( 
       title : const Text("Pagina 2"),
      ),
        drawer: Drawer(
          child:ListView(
              padding: EdgeInsets.zero,
              children: [
                const DrawerHeader(
                decoration: BoxDecoration(
                  color: Colors.blue,
                ),
                child:Text("Cabeçalho"),
              ),
               ListTile(
                title: const Text("Histórico"),
                onTap:(){
                  print("Historico");
                  print('passei por aqui');
                  Navigator.push(context,
                    MaterialPageRoute(builder: (context) => Historico()));
                  },
              ),
               ListTile(
                title: const Text(" Calendario"),
                onTap:(){
                    print("Calendario");
                  print('passei por aqui');
                  Navigator.push(context,
                    MaterialPageRoute(builder: (context) => Calendario()));
                   
                },
              ),
              ],
          ),
        ),
      body: Center(
        child: Column(
          children: [
            Image(image: AssetImage('assets/calendario.jpg')),
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
