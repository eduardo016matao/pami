import 'dart:math';

import 'package:flutter/material.dart';

String sorteia() {
  final random = Random();
  return random.nextInt(100).toString();
}

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    final tema = Theme.of(context);
    final bgColor = tema.colorScheme.inversePrimary;

    return Scaffold(
      appBar: AppBar(
        title: const Text("Inicio"),
        backgroundColor: bgColor,
      ),
      body: Center(
        child: ElevatedButton(
          onPressed: () {
            ScaffoldMessenger.of(context).showSnackBar(
              SnackBar(
                content: Text("Numero sorteado: ${sorteia()}"),
              ),
            );
          },
          child: const Text("Sortear"),
        ),
      ),
    );
  }
}
