import 'dart:html';

import 'package:flutter/material.dart';

void main() {
  final host = window.location.hostname;
  final subdomain = host?.split('.').first.toLowerCase();

  runApp(MyApp(subdomain: subdomain ?? ''));
}

class MyApp extends StatelessWidget {
  final String subdomain;
  const MyApp({super.key, required this.subdomain});

  @override
  Widget build(BuildContext context) {
    Widget page;

    if (subdomain == 'joao') {
      page = Scaffold(
        appBar: AppBar(title: Text("Loja do João")),
        body: Center(child: Text("Produtos para pets 🐶")),
      );
    } else if (subdomain == 'eletronicos') {
      page = Scaffold(
        appBar: AppBar(title: Text("Eletrônicos")),
        body: Center(child: Text("Gadgets e dispositivos ⚡")),
      );
    } else {
      page = Scaffold(
        appBar: AppBar(title: Text("MyValue")),
        body: Center(child: Text("Bem-vindo ao MyValue 🛍️")),
      );
    }

    return MaterialApp(home: page);
  }
}
