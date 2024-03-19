import 'package:card_app/custom_card.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

//este widget é a raiz do da aplicação
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        backgroundColor: Colors.teal,
        body: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            CircleAvatar(
              radius: 60.0,
              backgroundImage: AssetImage('images/perfil.jpeg'),
            ),
            Text(
              'Jonathan Calleri',
              style: TextStyle(
                fontFamily: 'Pacifico',
                color: Colors.white,
                fontSize: 40,
                fontWeight: FontWeight.bold,
              ),
            ),
            Text(
              'Jogador de Futebol',
              style: TextStyle(
                fontSize: 20,
                color: Colors.teal[100],
                fontWeight: FontWeight.bold,
              ),
            ),
            SizedBox(
              height: 20,
              width: 150,
              child: Divider(
                color: Colors.teal.shade100,
              ),
            ),
            CustomCard(text: '+55 11 956234659', icon: Icons.phone),
            CustomCard(text: 'j9calleri@spfc.com.br', icon: Icons.email),
          ],
        ),
      ),
    );
  }
}
