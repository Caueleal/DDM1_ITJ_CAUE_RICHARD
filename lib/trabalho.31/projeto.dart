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
    return const MaterialApp(
      home: BottomNavigationBarExample(),
    );
  }
}

class BottomNavigationBarExample extends StatefulWidget {
  const BottomNavigationBarExample({super.key});

  @override
  State<BottomNavigationBarExample> createState() =>
      _BottomNavigationBarExampleState();
}

class _BottomNavigationBarExampleState
    extends State<BottomNavigationBarExample> {
  int _selectedIndex = 0;
  static const TextStyle optionStyle =
      TextStyle(fontSize: 30, fontWeight: FontWeight.bold);
  static const List<Widget> _widgetOptions = <Widget>[
    Text(
      'Index 0: Home',
      style: optionStyle,
    ),
    Text(
      'Index 1: Business',
      style: optionStyle,
    ),
    Text(
      'Index 2: School',
      style: optionStyle,
    ),
    Text(
      'Index 3: Settings',
      style: optionStyle,
    ),
  ];

  void _onItemTapped(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('BottomNavigationBar Sample'),
      ),
      body: Center(
        child: _widgetOptions.elementAt(_selectedIndex),
      ),
      bottomNavigationBar: BottomNavigationBar(
        items: const <BottomNavigationBarItem>[
          BottomNavigationBarItem(
            icon: Icon(Icons.home),
            label: 'Home',
            backgroundColor: Colors.red,
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.business),
            label: 'Business',
            backgroundColor: Colors.green,
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.school),
            label: 'School',
            backgroundColor: Colors.purple,
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.settings),
            label: 'Settings',
            backgroundColor: Colors.pink,
          ),
        ],
        currentIndex: _selectedIndex,
        selectedItemColor: Colors.amber[800],
        onTap: _onItemTapped,
      ),
    );
  }
}
/*
import 'package:flutter/material.dart';

void main() {
  runApp(const MainApp());
}

class MainApp extends StatelessWidget {
  const MainApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
           title:Text(" Teste Drower"), 
        ),
        drawer: Drawer(
          child: ListView(
            padding: EdgeInsets.zero,
            children: [
               const DrawerHeader(
                decoration: BoxDecoration(
                  color: Colors.blue,
                ),
                  child:Text("Cabeçalho"),
              ),
              ListTile(
                title: const Text("Primeira Opção..."),
                onTap:(){
                    print("Primeiraopção escolhida");
                },
              ),
              ListTile(
                title: const Text("Segunda Opção..."),
                onTap:(){
                    print("Primeiraopção escolhida");
                },
              ),
              ListTile(
                title: const Text("Terceira Opção..."),
                onTap:(){
                    print("Primeiraopção escolhida");
                },
              ),
            ]
          )
        ),
      
        body: Center(
          child: Text('Hello World!'),
        ),
      ),
    );
  }
}*/ 